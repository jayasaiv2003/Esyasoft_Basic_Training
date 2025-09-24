import Loginform from "./components1/Loginform";
import UseEffectComponent from "./components1/UseEffectComponent";
import UseRefComponent from "./components1/UseRefComponent";
import ParentComponent from "./components1/ParentComponent";
import { createContext, useState } from "react";

const Context= createContext(null);

export{Context};

function App() {
   
  const[theme,setTheme]=useState('light');
  const[count,setCount]=useState(0);

  return (
    <div >
      <Context.Provider value={{
        theme: theme,
        setTheme: setTheme,
        count: count,
        setTheme:setTheme,
      }}>

        <UseContext/>
      </Context.Provider>

      <Loginform/>
      <UseEffectComponent/>
      <UseRefComponent/>
      <ParentComponent/>
    </div>
  );
}

export default App;
