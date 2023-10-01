package main

type OfferCandidateFB struct {
	Candidate     string `firestore:"candidate"`
	SDPMLineIndex int64  `firestore:"sdpMLineIndex"`
	SDPMid        string `firestore:"sdpMid"`
}
