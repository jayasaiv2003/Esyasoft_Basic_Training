import React ,{useRef,useState}from 'react';

export default function ColorBoxHighlighter() {

   const boxRefs = useRef([]);
  const [highlightIndex, setHighlightIndex] = useState(0);

  const highlightNextBox = () => {
  
    if (highlightIndex < boxRefs.current.length) {
      boxRefs.current[highlightIndex].style.border = 'none'; 
    }
    const nextIndex = (highlightIndex + 1) % boxRefs.current.length; 
    boxRefs.current[nextIndex].style.border = '5px solid yellow';
    setHighlightIndex(nextIndex); 
  };

  return (
   <div>
      <div style={{ display: 'flex', justifyContent: 'space-around', marginBottom: '20px' }}>
        <div ref={el => (boxRefs.current[0] = el)} style={{ backgroundColor: 'red', width: '100px', height: '100px' }} />
        <div ref={el => (boxRefs.current[1] = el)} style={{ backgroundColor: 'green', width: '100px', height: '100px' }} />
        <div ref={el => (boxRefs.current[2] = el)} style={{ backgroundColor: 'blue', width: '100px', height: '100px' }} />
      </div>
      <button onClick={highlightNextBox}>Highlight Next Box</button>
    </div>
  )
}