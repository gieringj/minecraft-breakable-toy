import React from "react"
import { Link } from "react-router-dom"

const VideoTile = (props) => {

    const video = props.video

    return(
        <div>
            <Link to={`/videos/${video.id}`}>
                <div className="card">
                    <div className="card-divider"> 
                        <p>{video.title}</p>
                    </div>
                    <div className="card-section">
                        <p>{video.url}</p>
                    </div>
                </div>
            </Link>
        </div>
    )
}

  export default VideoTile