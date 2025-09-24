import { useState } from "react";

function LoginComponent()
{
    const [username,setUsername]=useState("")
    const [password,setPassword]=useState("")
    const onLoginHandler=()=>{
        if(username!=="username"){
            alert("invalid username")
            return;
        }
        if(password!=="password"){
            alert("invalid password")
            return;
        }
        alert("login success")
    }
    return (
        <div style={{backgroundColor: "burlywood",
            padding: '50px'}}><form>
            <input type='text' value={username} onChange={(e)=>{setUsername(e.target.value)}} placeholder="enter your name"/>
            <input type='password' value={password} onChange={(e)=>{setPassword(e.target.value)}} placeholder="enter the password"/>
            <button type='submit' >login</button>
            <button type='reset' >reset</button>
            </form>
        </div>
    )
}

export default LoginComponent;