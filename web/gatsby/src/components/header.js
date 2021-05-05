import React from "react"

export default function Header(props) {
  return <h1>{props.headerText} {props.arbitraryPhrase}</h1>
}