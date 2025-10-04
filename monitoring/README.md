# Monitoring Stack

This project sets up a simple monitoring system using **Prometheus**, **Alertmanager**, and **Grafana**, all running in **Docker containers** via `docker-compose.monitoring.yml`.

## What’s Inside

- **Prometheus**: Keeps an eye on your applications and systems, collecting metrics and checking for issues.  
- **Alertmanager**: Handles any alerts Prometheus sends it groups related alerts and notifies the right people.  
- **Grafana**: Lets you visualize all those metrics with dashboards so you can quickly see how your system is doing.

## Accessing the Services

- **Prometheus** → `http://localhost:9090`  
  Explore metrics, targets, and see any alerts that are firing.  
- **Alertmanager** → `http://localhost:9093`  
  Check active alerts, silence them if needed, and see notification history.  
- **Grafana** → `http://localhost:3000` (default login: `admin/admin`)  
  Create dashboards and add Prometheus as a data source.

## How It Works

1. Prometheus collects metrics from your targets.  
2. When a metric crosses a threshold, an **alert rule** (like in `alert.rules.yml`) triggers an alert.  
3. Alertmanager takes over: it decides which alerts are important, groups related ones together, and sends notifications to the right channels.  
4. Grafana reads the metrics from Prometheus and gives you dashboards to visualize trends and system health.

## Getting Started

Just run everything with Docker Compose:

```bash
docker-compose -f docker-compose.monitoring.yml up -d

