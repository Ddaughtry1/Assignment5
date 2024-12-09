# Builder Stage
FROM alpine:latest AS builder

# Copy the data.txt file into the builder stage
COPY data.txt /tmp/

# Final Stage
FROM fedora:latest AS final

# Copy the data.txt file from the builder stage
COPY --from=builder /tmp/data.txt /

# Command to run (optional)
CMD ["cat", "/data.txt"]
