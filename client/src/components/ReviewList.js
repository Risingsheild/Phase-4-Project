import { useEffect, useState} from "react";
import ReviewForm from "./ReviewForm";
import ReviewCard from "./ReviewCard"

function ReviewList(){
    const[rData, setRData] = useState([])
    console.log(rData);

    useEffect(()=> {
        fetch('/reviews')
        .then(r => r.json())
        .then(data => setRData(data))
    }, [])

    return(
        <div className="gameList">
            {rData.map(
                (eachReview) => {
                    return(<ReviewCard key={eachReview.id} reviewInfo={eachReview}/>)
                }
            )}
            <ReviewForm/>
        </div>
    )


}

export default ReviewList