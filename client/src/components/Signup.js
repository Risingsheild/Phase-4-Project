import { useState } from "react";
import {NavLink, useNavigate} from "react-router-dom"

function Signup() {
    const [formData, setFormData] = useState({
        username: "",
        password: "",
        email: "",
    })

    const navigate = useNavigate()

function handleChange(e){
    setFormData({
        ...formData,
        [e.target.name]: e.target.value
    })
}

function handleSubmit(e){
    e.preventDefault();
    
    const cred = {...formData}
    
    fetch('/users', {
        method: "POST",
        headers: {
            "Content-Type":"application/json"
        },
        body: JSON.stringify(cred),
    })
    .then ((r) => r.json())
    .then ((user) => {
        console.log(user);
        setFormData({
            username: "",
            password: "",
            email: ""
        })
    navigate('/')
    })
}
    return (
        <div className="Login">
            <h1>Create A User</h1>
            <form onSubmit={handleSubmit}>
                <label className="labels">Username:</label>
                    <input 
                    id="username-signup-input"
                    type="text"
                    name="username"
                    value={formData.username}
                    onChange={handleChange}
                    />
                    <br />
                <label className="labels">Email:</label>
                    <input
                    id="email-signup-input"
                    type="text"
                    name="email"
                    value={formData.email}
                    onChange={handleChange}
                    />
                    <br />
                    <label className="labels">Password:</label>
                        <input
                        id="password-signup-input"
                        type="text"
                        name="password"
                        value={formData.password}
                        onChange={handleChange}
                        />
                    <br />
                    <button type="submit">Create Account</button>
            </form>
            <NavLink to='/login' replace>
                Already have an Account? Login!
            </NavLink>
        </div>
    )
}

export default Signup