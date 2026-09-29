// Forward Deployed AI Engineer — Agile Robots (Munich). Structure copied from template.typ.

#set page(margin: (x: 1.4cm, y: 1.1cm))
#set text(font: ("Calibri", "Carlito"), size: 10pt)
#set par(justify: false, leading: 0.55em)
#show heading: set text(size: 11pt, weight: "bold")

#let section(title) = {
  v(0.3em)
  heading(level: 2, upper(title))
  v(-0.4em)
  line(length: 100%, stroke: 0.5pt)
  v(0.05em)
}

#let job(role, org, dates, bullets) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", role + " — " + org),
    text(dates),
  )
  v(-0.3em)
  for b in bullets [ - #b ]
  v(0.15em)
}

// ---------------------------------------------------------------- header
#align(center)[
  #text(size: 17pt, weight: "bold")[Advait Pandharpurkar] \
  #v(-0.3em)
  #text(size: 10.5pt)[Forward Deployed AI Engineer · Robotics Perception, Teleoperation & Edge Deployment] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI engineer with 2+ years shipping perception, teleoperation and embedded software onto real robots:
an NVIDIA Jetson depth perception stack, internet teleoperation of ROS2 robots, and camera streaming
from production robot hardware. Strong Python and C++ on Linux across 3 robot platforms, with
industrial control and on-site customer debugging.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* C++, Python, Rust, Bash, Java, JavaScript \
*Robotics & Perception:* ROS2, ROS, OpenCV, depth perception, point clouds, camera calibration, NVIDIA Jetson, edge deployment, teleoperation, real robot platforms (Cepheus, Diadem, TTB-PRO-MAX) \
*ML & Model Lifecycle:* model fine-tuning, training and evaluation pipelines, dataset curation, PyTorch, TensorFlow, YOLO, SAM, vision transformers, DINOv2, CLIP, grasp generation (GraspNet, Dex-Net), VLA models, diffusion policies, imitation learning, TensorRT, ONNX, quantization, MLOps \
*Systems & Industrial:* Linux, PROFINET, industrial controls, Docker, Kubernetes, Git, CI/CD, FastAPI, REST APIs, Microservices, Azure DevOps \
*Cloud & Data:* Google Cloud, Azure, AWS, Databricks, data pipelines, rosbag and teleoperation data capture

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Build a 7-tool MCP AI service for Azure DevOps (pipeline status, changelogs, suggested code fixes) plus the internal MCP server platform other product teams run their agents on.],
  [Take ambiguous requirements to working proofs of concept, including a Reinsurance data-validation POC that secured funding for 2 AI engineering hires and a Copilot cost and usage plugin now demoed to leadership.],
  [Train the full MGCC CorpTech organization on prompt engineering across 3 enablement topics, turning hands-on agent experience into reusable guidance for other engineers.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Removed the dedicated industrial PC from loop-sorter test emulation by writing a C++ and Rust PROFINET translation layer that runs on a VM, reaching 90% sorter efficiency against the real control pipeline.],
  [Evaluated 4 IO-emulation designs and rejected the full IO-layer redesign as too slow to land, shipping a thinner translation layer that worked with the existing controls stack instead.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Enabled internet teleoperation of ROS2 robots through 1 Google Cloud-hosted Zenoh router, replacing LAN-only control and bridging DDS pub/sub across NAT.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) and shipped WebRTC camera middleware streaming NDI feeds at 720p/30 fps from real robot hardware.],
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Delivered 1 on-device depth perception stack for OAK-D cameras in Rust and OpenCV, optimised to run on NVIDIA Jetson edge hardware and published through a ROS2 Jazzy package, demoed live at IIT Bombay E-Summit.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
