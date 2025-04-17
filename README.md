# Failing to solve traffic with Reinforcement Learning and Curriculum approaches

## Thesis or Master Degree in Computer Science, academic year 2024/2025

## Index

- [ ] Introduction
- [ ] Traffic Science
  - [ ] Domain (Vehicles, Traffic, Traffic Lights)
  - [ ] Demand Models (Rush hours, Origin-Destination Matrices)
  - [ ] Assumptions and study scenarios
- [ ] Traffic Simulation
  - [ ] SUMO
  - [ ] sumo-rl
  - [ ] Traffic lights as agents
- [ ] Background on Reinforcement Learning
  - [ ] Reinforcement Learning
  - [ ] Curriculum Learning
- [ ] Agents
  - [ ] Q Learning
  - [ ] DQN
  - [ ] PPO
  - [ ] Fixed Cycle
- [ ] Fasteners and tools
  - [ ] Observation functions
  - [ ] Reward functions
  - [ ] Traffic generation
- [ ] Experiments and findings
  - [ ] Metrics
  - [ ] 0) Picking a Reward function
  - [ ] 1) Training only on NORMAL settings
  - [ ] 2) Training with a bit of ABNORMAL settings
  - [ ] 3) Picking an Observation function
  - [ ] 4) kickstarting a self-adapting system
  - [ ] -) Impact of cycle time in fixed cycle agents
  - [ ] -) Impact of resizing quantization of states
  - [ ] -) Impact of resizing neural networks
  - [ ] -) Impact of agent expertise levels during multi-agent system training
  - [ ] -) Transfer learning between agents of same shape (modularization and idempotence)
  - [ ] -) Transfer learning between agents of different shape (mutation and adaptation)
- [ ] Threats to Validity
  - [ ] Internal threats
    - [ ] Simplistic simulation model
    - [ ] No advanced tweaks in RL Models
  - [ ] External threats
    - [ ] Tiny scenarios
    - [ ] No experimentation on wide networks with OD Matrix
- [ ] Future Work
  - [ ] Apply results to Via Bassini to lower waiting time for ATM trolleybus 93, my beloved
  - [ ] Apply results to Via Porto Corsini to catch ATM M1 in time for Bisceglie instead of Rho Fieramilano
- [ ] Conclusion
