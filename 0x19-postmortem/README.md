## 0x19-postmortem
Post-Mortem: August 17, 2024 Web Stack Outage

## Summary:

On June 17, 2024, our web stack took an unexpected vacation, leaving users with a 503 error and a "Please try again later" message. It was a classic case of "the server is currently out of office."

## What Happened:

1. The Culprit: A misconfigured load balancer decided it was time for a break. It led to an unintended "Server Not Found" treasure hunt for our users.
2. The Chaos: Traffic was redirected to a backup server that, much like a substitute teacher, wasn’t quite prepared for the job.

## Impact:

- User Experience: Picture a rollercoaster that suddenly stops halfway up the first drop. Users experienced disrupted access to our services.
- Downtime: Approximately 45 minutes of "we’ll be back shortly" moments.

## Illustration of the Incident:
Diagram Key:

- Load Balancer: Gone on vacation
- Backup Server: Overwhelmed and confused
- Traffic: Bouncing around like a beach ball

Start time: 10:00 Am
End time: 1:00 Pm
Total duration: 3 hours

## Root Cause:

A configuration tweak meant to improve load balancing ended up creating an infinite loop of redirects. The backup server, which was not equipped to handle the increased load, threw in the towel.

## What We Did Right:

1. Quick Identification: Our monitoring system flagged the issue faster than a cat spotting a laser pointer.
2. Effective Communication: We kept users updated, because everyone hates being left in the dark.

## What We’ll Do Better:

1. Rigorous Testing: We’ll ensure all configurations are tested more thoroughly than a Netflix binge-watcher’s watchlist.
2. Backup Preparation: We’ll make sure our backup servers are more prepared for action than a prepped contestant on a game show.

## Closing Thoughts:

Thanks for your patience as we resolved this hiccup. Just like a good sitcom, we aim to keep our problems predictable, brief, and ultimately entertaining. 
