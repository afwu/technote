

class Promisee {
    callbacks = [];
    constructor(fn) {
        fn(this._resolve.bind(this));
    }
    then(onFulfilled) {
        this.callbacks.push(onFulfilled);
    }
    _resolve(value) {
        this.callbacks.forEach(fn => fn(value));
    }
}

//Promise应用
let p = new Promisee(resolve => {
    setTimeout(() => {
        console.log('done');
        resolve('3秒');
    }, 3000);
}).then((tip) => {
    console.log('tip: ', tip);
})

