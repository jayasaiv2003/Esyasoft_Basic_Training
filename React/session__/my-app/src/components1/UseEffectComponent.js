import { useEffect, useState } from "react";
import React from 'react'

const suggestionMaster = [
    "laptop",
    "mobile",
    "phone"
    
];


export default function UseEffectcomp() {
      const [search,setSearch]=useState("")
    const [recommendation,setRecommendation]=useState(suggestionMaster)
    useEffect (() => {
        setRecommendation(suggestionMaster.filter((elem)=> elem.includes(search)))
    }, [search]);

  
  return (
    <div>
       <input value={search} onChange={(e)=>setSearch(e.target.value)}/>
       {
        recommendation.map((element,index)=><div key={index}>{index}.{element}</div>)
       }
    </div>
  )
}