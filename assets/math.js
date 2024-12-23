document.addEventListener("DOMContentLoaded", function() {
    renderMathInElement(document.body, {
        // customised options
        // • auto-render specific keys, e.g.:
        delimiters: [
            {left: '$$', right: '$$', display: true},
            {left: '$', right: '$', display: false},
            {left: '\\(', right: '\\)', display: false},
            {left: '\\[', right: '\\]', display: true}
        ],
        // • rendering keys, e.g.:
        throwOnError : false
    });
});

function defineVars(vars) {
    const data = new Map(vars);

    window.addEventListener('DOMContentLoaded', () => {
        const mathVars = document.querySelectorAll('span.katex span.mord');

        mathVars.forEach(el => {
            for (const [v, help] of data.entries()) {
                if (el.textContent == v) el.setAttribute('title', help);
            }
        });
    });
}

function plot(target, fns, deps, [xDomain, yDomain] = [[-1, 9], [-1, 9]]) {
    const depsEl = deps.map(document.querySelector.bind(document));
    const plot = () => {
        functionPlot({
            target,
            width: 600,
            height: 400,
            xAxis: { domain: xDomain },
            yAxis: { domain: yDomain },
            grid: true,
            data: fns(...(depsEl.map(el => parseFloat(el.value)))).map(fn => ({
                    fn, graphType: 'polyline'
                }))
        });
    }

    depsEl.forEach(el => {
        el.addEventListener((el.tagName == 'INPUT' && el.type == 'range' ? 'mousemove' : 'change'), plot);
    });

    plot();
}

Object.assign(window, {defineVars, plot});