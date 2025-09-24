import React, { useState, useMemo, useCallback } from "react";

export default function NumberListAnalyzer() {
  const [inputValue, setInputValue] = useState("");
  const [numberList, setNumberList] = useState([]);

  const addNumber = () => {
    const num = Number(inputValue);
    if (!isNaN(num) && inputValue.trim() !== "") {
      setNumberList((prev) => [...prev, num]);
      setInputValue("");
    }
  };

  const sumNumbers = useMemo(
    () => numberList.reduce((acc, n) => acc + n, 0),
    [numberList]
  );

  const maxNumber = useMemo(
    () => (numberList.length ? Math.max(...numberList) : 0),
    [numberList]
  );

  const removeNumber = useCallback(
    (idx) => {
      setNumberList((prev) => prev.filter((_, i) => i !== idx));
    },
    [setNumberList]
  );

  return (
    <div>
      <h2>Number List Analyzer</h2>
      <input
        type="text"
        value={inputValue}
        onChange={(e) => setInputValue(e.target.value)}
      />
      <button onClick={addNumber}>Add</button>

      <ul>
        {numberList.map((num, i) => (
          <li key={i}>
            {num} <button onClick={() => removeNumber(i)}>Remove</button>
          </li>
        ))}
      </ul>

      <div>Sum: {sumNumbers}</div>
      <div>Largest: {maxNumber}</div>
    </div>
  );
}
