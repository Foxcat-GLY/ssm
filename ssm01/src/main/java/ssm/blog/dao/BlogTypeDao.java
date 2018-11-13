package ssm.blog.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import ssm.blog.entity.BlogType;

import java.util.List;

/**
 * Description 博客类别dao
 */
@Repository
public interface BlogTypeDao {

    /**
     * 添加博客类别信息
     * @param blogType 博客类型
     * @return 成功则返回1
     */
    Integer addBlogType(BlogType blogType);

    /**
     * 删除博客类别信息
     * @param id 自增ID
     * @return 成功则返回1
     */
    Integer deleteBlogType(Integer id);

    /**
     * 更新博客类别信息
     * @param blogType 博客类型实体
     * @return 成功则返回1
     */
    Integer updateBlogType(BlogType blogType);

    /**
     * 根据id查询博客类别信息
     * @param id 自增ID
     * @return 成功则返回博客类型实体信息
     */
    BlogType getById(Integer id);

    /**
     * 分页查询博客类别信息
     * @param start 起始页
     * @param end 结束页
     * @return 返回博客类型列表
     */
    List<BlogType> listByPage(@Param("start") Integer start, @Param("end") Integer end);

    /**
     * 查询总记录数
     * @return 返回总记录数
     */
    Long getTotal();
}
