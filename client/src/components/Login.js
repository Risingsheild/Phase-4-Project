import {useState} from "react"
import {useNavigate} from "react-router-dom"

function Login({setCurrentUser}) {
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const [errors, setErrors] = useState([])
    const [login, setLogin] = useState('')

    const navigate = useNavigate()


    function handleSubmit(e) {
        e.preventDefault()
        const user ={
            username, 
            password
        }

    fetch('/users', {
        method: "POST",
        headers: {'Content-Type' : 'application/json'},
        body:JSON.stringify(user)
    })
    .then(res => {
        if (res.ok){
            res.json().then(setCurrentUser)
        }
        else{
            res.json().then(e => setErrors(Object.entries(e.error).flat())) 
        } 
        navigate('/categories')
    })
   
    }

    return (
        <div>
            <form onSubmit={handleSubmit} className="Login">
                <label htmlFor="username">Username: </label>
                <input
                type="text"
                id="username" 
                value={username}
                onChange={(e) => setUsername(e.target.value)}
                />
                <input 
                type="text"
                id="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                />
                <button type="submit" onClick={() => setLogin(login)}>Login</button>
            </form>
            {errors?errors.map(e => <h3>{e}</h3>):null}
        </div>
    )
}

export default Login