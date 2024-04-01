import { Link } from 'react-router-dom'
import './Boton2.css'

const Boton2 = (data) => {
    return (
        <div>
            <button className="cta">
                <Link className="hover-underline-animation boton-text" to={data.link} >{data.titulo}</Link>
                <svg
                    id="arrow-horizontal"
                    xmlns="http://www.w3.org/2000/svg"
                    width={20}
                    height={5}
                    viewBox="0 0 46 16"
                >
                    <path
                        id="Path_10"
                        data-name="Path 10"
                        d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                        transform="translate(30)"
                    />
                </svg>
            </button>

        </div>
    )
}

export default Boton2
