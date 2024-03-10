# Use base image
FROM dorowu/ubuntu-desktop-lxde-vnc

# Expose the port on which NoVNC runs (80 inside the container)
EXPOSE 8080

#Set the environment variable for screen resolution
ENV RESOLUTION 1536x695

#Start the command to run NoVNC
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
