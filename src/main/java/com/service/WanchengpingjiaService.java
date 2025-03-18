package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WanchengpingjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WanchengpingjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WanchengpingjiaView;


/**
 * 完成评价
 *
 * @author 
 * @email 
 * @date 2021-01-20 14:00:36
 */
public interface WanchengpingjiaService extends IService<WanchengpingjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WanchengpingjiaVO> selectListVO(Wrapper<WanchengpingjiaEntity> wrapper);
   	
   	WanchengpingjiaVO selectVO(@Param("ew") Wrapper<WanchengpingjiaEntity> wrapper);
   	
   	List<WanchengpingjiaView> selectListView(Wrapper<WanchengpingjiaEntity> wrapper);
   	
   	WanchengpingjiaView selectView(@Param("ew") Wrapper<WanchengpingjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WanchengpingjiaEntity> wrapper);
   	
}

