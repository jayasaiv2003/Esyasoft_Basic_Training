import React from "react";
import { ThemeProvider} from "./componnets/Themecontext"
import ThemeContent from "./componnets/Themecontent";

function App() {
  return (
    <ThemeProvider>
      <ThemeContent />
    </ThemeProvider>
  );
}

export default App;
