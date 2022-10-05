import {NavLink} from "react-router-dom"

function NavBar(){
    return( 
        <div className="navBar">
            <NavLink to='/pc/games'>PC Games</NavLink>
            <NavLink to='/xbox/games'>Xbox Games</NavLink>
            <NavLink to='/ps/games'>PlayStation Games</NavLink>
        </div>
    )
}

export default NavBar