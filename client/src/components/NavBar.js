import {NavLink} from "react-router-dom"

function NavBar(){
    return( 
        <div className="navBar">
            <NavLink to='/'>Home Page</NavLink>
            <NavLink to='/games'>Games</NavLink>
            <NavLink to='/platforms'>Platforms</NavLink>
            <NavLink to='/reviews'>Reviews</NavLink>
        </div>
    )
}

export default NavBar