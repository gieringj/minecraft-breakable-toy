import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"

const VideoContainer = (props) => {

const [video, setVideo] = useState({ current_user: {} })

  const fetchVideo = async () => {
    try {
      const response = await fetch(`/api/v1/videos/${props.match.params.id}`)
      if (!response.ok) {
        const errorMessage = `${response.status} ${response.statusText}`
        const error = new Error(errorMessage)
        throw (error)
      } else {
        const parsedVideo = await response.json()
        setVideo(parsedVideo)
      }
    } catch (err) {
      console.log(`Error! - ${err}`)
    }
  }

  useEffect(() => {
    fetchVideo()
  }, [])

  return (
    <div>
      <h3>Video Show</h3>
      <p>{video.title}</p>
      <p>{video.description}</p>
      <p>{video.upload_date}</p>
      <p>{video.url}</p>
      <p>{video.rating}</p>
      <p>{video.familiarity}</p>
      <p>{video.type}</p>
      <p>{video.creator_id}</p>
      <p>{video.list_id}</p>
    </div>
  )
}

export default withRouter(VideoContainer)



