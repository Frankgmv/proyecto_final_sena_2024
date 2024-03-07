import Logo from '../../../assets/img/logo.png';
import { BrowserRouter, Link } from 'react-router-dom';
import './navBarPrincipal.css'
import MenuHamburguesa from '../menuHamburguesa/menuHamburguesa.jsx'
// import MenuDesplegable from '../MenuDesplegable/menuDesplegable.jsx';


const NavBarPrincipal = (nombre) => {
return (
    <>
        <div className="navbar">
            <div className="navbar_info">
                <div className="logo">
                    <img src={Logo} alt="Logo.png" />
                </div>
                <div className='barraAzul'></div>
                <div className="navbar_info_text">
                    <h4>Intitución Educativa</h4>
                    <h2>Centenario de Pereira</h2>
                </div>
            </div>
            <div className="navbar_links">
                    <BrowserRouter>
                        <Link className="link" to="#">{nombre}</Link>
                        <Link className="link" to="#">institución</Link>
                        <Link className="link" to="#">Plataformas Académicas</Link>
                        <Link className="link" to="#">Blogs</Link>
                        <Link className="link" to="#">Noticias</Link>
                    </BrowserRouter>
            </div>
            <div className="menu_hamburguesa">
                <MenuHamburguesa/>
            </div>
        </div>
        {/* <div className="menuDesplegable">
            <MenuDesplegable/>
        </div> */}
    </>
);
};

export default NavBarPrincipal;
