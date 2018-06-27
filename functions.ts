function barr(x: number = 2, xx?: number) {
    console.log(`${x} and ${xx}`);
}

barr();

//1. 可选参数不传的话默认为undefined， 理解为默认传了一个undefined
//2. 设置了参数默认值的话， 不传和传undefined 都会取默认值
//3. 同一个参不能同时拥有可选标记和默认值标记。因为如果设置了默认值的话那他一定是可选的。
