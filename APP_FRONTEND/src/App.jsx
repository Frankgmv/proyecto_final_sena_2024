import NavBarPrincipal from "./components/navbar/navBarPrincipal/navBarPrincipal";
import SliderPrincipal from './components/slider/sliderPrincipal.jsx'
import './App.css'

function App() {
  return (
    <div className="container">
      <div className="nav">
      <NavBarPrincipal />
    </div>
    <div className="slider">
      <SliderPrincipal />
    </div>
    </div>
  );
}

export default App;
