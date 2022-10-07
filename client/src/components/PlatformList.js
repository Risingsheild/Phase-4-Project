import { useEffect, useState } from "react";
import PlatformCard from "./PlatformCard";


function PlatformList() {
    const [platform, setPlatform] = useState([])
    console.log(platform);

    useEffect(() =>{
        fetch('/platforms')
        .then(r => r.json())
        .then(data => setPlatform(data))
    }, [])

return (
    <div>
        {platform.map((eachPlatform) => {
                return (<PlatformCard key={eachPlatform.id} platformInfo={eachPlatform}/>)
            }
        )}
    
    </div>
    )
}

export default PlatformList



