
import React,{useRef} from "react";

const UseRefComponent = () => {
    const ref= useRef(null);
    const buttonHandler=()=>{
        ref.current.focus();
    }
    return(
        <div>  
            <input ref={ref}/>  
            <button onClick={buttonHandler}>focus</button>
        </div>
    )
}

//UseRefComponent.propTypes = propTypes;
//UseRefComponent.defaultProps = defaultProps;
// #endregion

export default UseRefComponent;