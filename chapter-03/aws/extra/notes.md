# Notes

## Using a conditional loop

```yml
    - name: get ec2 instance info
      ec2_instance_info:
        region: us-east-1
        filters:
          "tag:app": ansible
          "tag:env": dev
      register: ec2

    - debug:
        msg: "{{ item['instance_id'] }}"
      loop: "{{ ec2['instances'] }}"
      loop_control:
        label: "{{ item.instance_id }}"
```
