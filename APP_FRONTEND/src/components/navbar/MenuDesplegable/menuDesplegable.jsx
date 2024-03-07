import './menuDesplegable.css'
import { BrowserRouter, Link } from 'react-router-dom';

const MenuDesplegable = () => {
    return (
        <>
            <div className="menu_desplegable click">
                <ul className="nav_link">
                    <BrowserRouter>
                        <div className="links">
                            <li className="link">
                                <Link className="link_a" to="#">La institucion</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Contactos y Sugerencias</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Innovación Educativa</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Gobierno Escolar</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Magazine</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Los Estudiantes</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Galeria de Eventos y Fotos</Link>
                            </li>
                        </div>
                        <div className="cuenta">
                            <li className="link">
                                <Link className="link_a" to="#">Iniciar Sesion</Link>
                            </li>
                            <li className="link">
                                <Link className="link_a" to="#">Registrarse</Link>
                            </li>
                        </div>
                    </BrowserRouter>
                </ul>
            </div>
        </>
    )
}

export default MenuDesplegable;