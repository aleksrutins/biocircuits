function defineVars(vars) {
    const data = new Map(vars);

    window.addEventListener('DOMContentLoaded', () => {
        const mathVars = document.querySelectorAll('span.katex span.mord.mathnormal');

        mathVars.forEach(el => {
            for (const [v, help] of data.entries()) {
                if (el.textContent == v) el.setAttribute('title', help);
            }
        });
    });
}

function plot(target, fn, deps) {
    const depsEl = deps.map(document.querySelector.bind(document));
    const plot = () => {
        functionPlot({
            target,
            width: 600,
            height: 400,
            yAxis: { domain: [-1, 9] },
            grid: true,
            data: [
                {
                    fn: fn(...(depsEl.map(el => el.value)))
                }
            ]
        });
    }

    depsEl.forEach(el => {
        el.addEventListener((el.tagName == 'INPUT' && el.type == 'range' ? 'mousemove' : 'change'), plot);
    });

    plot();
}

Object.assign(window, {defineVars, plot});