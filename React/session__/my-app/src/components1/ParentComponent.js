import React, { useState } from 'react';
import styled from 'styled-components';
import PropTypes from 'prop-types';


const ParentComponent = () => {
    const[count,setCount]=useState(0);
    const increment=()=>{setCount(prev=>prev+1);}
    const decrement=()=>{setCount(prev=>prev-1);}
    return(<div>
     Welcome to ParentComponent
     <Sibling1 count={count}/>
     <Sibling2 increment={increment} decrement={decrement}/>
    </div>
    );
}

function Sibling1(setCount){
       return(
           <div>
               {count}
           </div>)
}

function Sibling2(){
    
    return (
        <>
        <button onClick={increment}>increment</button>
        <button onClick={decrement}>decrement</button>
        </>
    )
}

export default ParentComponent;