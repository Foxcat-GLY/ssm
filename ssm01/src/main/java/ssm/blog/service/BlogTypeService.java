package ssm.blog.service;

import org.springframework.stereotype.Service;
import ssm.blog.entity.BlogType;
import ssm.blog.entity.PageBean;

/**
 * @author
 * @Description 博客类别service接口
 */
public interface BlogTypeService {

    //分页查询
    PageBean<BlogType> listByPage(PageBean<BlogType> pageBean);
}
