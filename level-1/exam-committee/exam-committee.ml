type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let exam_committee vote1 vote2 vote3 = match (vote1, vote2, vote3) with
    | (_, _, StrongReject) -> false
    | (_, WeakAccept, WeakAccept) -> true
    | (WeakAccept, _, WeakAccept) -> true
    | (WeakAccept, WeakAccept, _) -> true
    | (_, StrongAccept, StrongAccept) -> true
    | (StrongAccept, _, StrongAccept) -> true
    | (StrongAccept, StrongAccept, _) -> true
    | (_, WeakAccept, StrongAccept) -> true
    | (WeakAccept, _, StrongAccept) -> true
    | (WeakAccept, StrongAccept, _) -> true
    | (_, StrongAccept, WeakAccept) -> true
    | (StrongAccept, _, WeakAccept) -> true
    | (StrongAccept, WeakAccept, _) -> true
    | _ -> false;;