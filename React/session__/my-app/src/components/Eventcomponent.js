import React from "react";



function Eventcomponent()
{
    const onChangeHandler=(e)=>{  //e is an object
        if(e.target.value=="J")
            console.log(e.target.value)
        else console.log("wrong")
    }
    return (
        <>
        welcome
        <button onClick={()=>{console.log("button clicked")}}>click</button>
         <div 
            style={{backgroundColor: "burlywood",
            padding: '50px'
        }}
            onMouseEnter={()=>{console.log("mouse entered the div")}}>
                This is div
            </div>
          <input type="text" onChange={onChangeHandler}/>
        </>
    );

}
export default Eventcomponent;