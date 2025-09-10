function Counter(){
    let count=0;
    console.log(x);
    var x=5;
    let b=5;
    const c=6;
    console.log(b);
    console.log(c);
    const add=(a,b)=>a+b;
    console.log(add(3,4));

    const user={
        /*name: "aaa"*/
        info :{
            address: "abc",
            state: "bbb"}}
    const {name:userName='Aron', info:{address, state}}=user;
    console.log(userName);
    console.log(address);
    console.log(state);
    let a=1;
    [a,b]=[b,a];
    console.log(a);
    console.log(b);

    const prev={name:'A', age: 20};
    const next={...prev};
    console.log(next.name);
    console.log(next.age);
    /* writing plain javascript without state below*/
    const increment=()=>{
        count++;
        document.getElementById("c1").innerText=count;
    }
    const decrement=()=>{
        count--;
        document.getElementById("c1").innerText=count;
    }
    return (<div>
        <h1 id="c1">0</h1>
        <button onClick={increment}>INC</button>
        <button onClick={decrement}>DEC</button>
        </div>
    )
}

export default Counter;
