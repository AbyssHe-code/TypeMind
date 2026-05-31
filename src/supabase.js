import { createClient } from '@supabase/supabase-js'

// 请在创建完 Supabase 项目后，将下面这两个常量替换为您项目真实的 URL 和 API Key
export const SUPABASE_URL = 'https://kgscjyypnioilerghswa.supabase.co'
export const SUPABASE_ANON_KEY = 'sb_publishable_7bRT9pettmlTK629ZzpUAQ_ENnWR_lX'

// 创建并导出一个唯一的 Supabase 客户端实例
export const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY)
