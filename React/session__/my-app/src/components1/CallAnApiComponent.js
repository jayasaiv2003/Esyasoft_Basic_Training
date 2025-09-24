import React from 'react';
import styled from 'styled-components';
import PropTypes, { element } from 'prop-types';

const CallAnApiComponent = () => {
    const [data,setData]=useState([])
    const getData= () => {
        let a =fetch("")
        .then((data)=>data.json())
        .then((jsonData)=>console.log(jsonData))
    }
    
}

export default CallAnApiComponent;
