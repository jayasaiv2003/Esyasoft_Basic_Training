import React, { createContext, useState } from "react";

export const ThemeContext = createContext();

const lightTheme = { backgroundColor: "white", color: "black" };
const darkTheme = { backgroundColor: "black", color: "white" };

export function ThemeProvider({ children }) {
  const [currentTheme, setCurrentTheme] = useState(lightTheme);

  const toggleTheme = () => {
    setCurrentTheme((prev) => (prev === lightTheme ? darkTheme : lightTheme));
  };

  return (
    <ThemeContext.Provider value={{ theme: currentTheme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
}
