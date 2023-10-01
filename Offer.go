package main

type Offer struct {
	Type string `firestore:"type"`
	SDP  string `firestore:"sdp"`
}

type OuterOffer struct {
	Offer Offer
}

type StartOffer struct {
	example string `firestore:"placeholder"`
}