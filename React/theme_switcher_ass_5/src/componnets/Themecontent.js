import React, { useContext } from "react";
import { ThemeContext } from "./Themecontext";

export default function ThemeContent() {
  const { theme, toggleTheme } = useContext(ThemeContext);

  return (
    <div
      style={{
        backgroundColor: theme.backgroundColor,
        color: theme.color,
        minHeight: "100vh",
        padding: "20px",
      }}
    >
      <h1>Hello </h1>
      <button onClick={toggleTheme}>Toggle Theme</button>
    </div>
  );
}
