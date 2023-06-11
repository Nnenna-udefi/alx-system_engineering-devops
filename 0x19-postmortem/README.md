# Postmortem: Service Outage - June 10, 2023
![postmortem-img](https://developers.google.com/static/maps/images/incident-mgt-1.png)

## Issue Summary:
From 4:00 AM to 6:35 AM (UTC) our social media platform was completely inaccessible to users during the outage, affecting approximately 85% of all active users. The root cause of this outage was a cascading failure in the database infrastructure due to a misconfigured automated backup process.
## Timeline:
- 4:00 AM: The issue was detected when an engineer received a monitoring alert indicating a sudden spike in database connection errors.
- 4:20 AM: The database team immediately started investigating the issue, assuming it was caused by a surge in user activity.
- 4:32 AM: Initially, the team focused on optimizing database queries and scaling up the database cluster to handle the increased load, but these measures did not alleviate the problem.
- 4:45 AM: As the situation worsened, the incident escalated to the infrastructure team and senior management.
- 5:15 AM: It was discovered that the automated backup process, which had recently been updated, was misconfigured and causing excessive load on the database servers.
- 5:30 AM: The misconfigured backup process was disabled, and the affected database servers were rebooted to recover from the cascading failure.
- 6: 35 AM: 100% of traffic back online
## Root Cause and Resolution:
The root cause of the service outage was a misconfigured automated backup process. The misconfiguration caused the backup process to overload the database servers with excessive read operations, which led to increased latency and eventual failure.
To resolve the issue, the misconfigured backup process was immediately disabled, preventing further strain on the database servers. Additionally, the affected database servers were rebooted to recover from the cascading failure and restore normal operation. Once the servers were back online, the platform's functionality was fully restored.
## Corrective and Preventative Measures:
To prevent similar incidents in the future, the following measures will be implemented:
+ Improve Backup Process: Review and enhance the automated backup process to ensure it is properly configured, taking into account the load it imposes on the database servers.
+ Load Testing: Conduct regular load testing exercises to identify any potential bottlenecks or performance issues before they impact the live system.
+ Monitoring Enhancements: Enhance the monitoring system to provide real-time visibility into database performance, specifically focusing on connection errors and latency spikes.
+ Incident Response Training: Conduct additional training sessions for the engineering and operations teams to improve incident detection, response, and coordination.
+ Configuration Audits: Perform regular audits of critical system configurations to identify and rectify any misconfigurations promptly.
### Tasks to Address the Issue:
* Conduct a comprehensive review of the backup process configuration, ensuring it aligns with best practices and does not place undue strain on the database servers.
* Develop and implement load testing scenarios to simulate heavy user traffic and monitor the performance impact on the system.
* Enhance the monitoring system to include specific alerts for connection errors and latency spikes in the database infrastructure.
* Schedule incident response training sessions for the engineering and operations teams, focusing on effective incident detection, escalation, and resolution.
* Establish a recurring process for configuration audits to identify and rectify any misconfigurations across critical system components.
By implementing these measures and addressing the identified tasks, we aim to minimize the risk of similar outages and improve the overall reliability and performance of our platform.
## Conclusion
In conclusion, the service outage on June 10, 2023, was caused by a misconfigured automated backup process, leading to a cascading failure in the database infrastructure. The issue was promptly detected, escalated, and resolved within 2 hours and 35 minutes, minimizing the impact on users. The corrective and preventative measures outlined above will be implemented to mitigate the risk of future incidents and enhance.

Google doc link - https://docs.google.com/document/d/12D4s9JYJEf9_N9G2rWEibEpUaTfXD2EEv7DUETduJ78/edit?usp=sharing
