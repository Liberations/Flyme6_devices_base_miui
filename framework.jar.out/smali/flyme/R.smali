.class public final Lflyme/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/R$anim;,
        Lflyme/R$animator;,
        Lflyme/R$array;,
        Lflyme/R$attr;,
        Lflyme/R$bool;,
        Lflyme/R$color;,
        Lflyme/R$dimen;,
        Lflyme/R$drawable;,
        Lflyme/R$fraction;,
        Lflyme/R$id;,
        Lflyme/R$integer;,
        Lflyme/R$interpolator;,
        Lflyme/R$layout;,
        Lflyme/R$menu;,
        Lflyme/R$raw;,
        Lflyme/R$string;,
        Lflyme/R$style;,
        Lflyme/R$xml;,
        Lflyme/R$styleable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    sget v0, Lflyme/R$anim;->dock_bottom_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->dock_bottom_enter:I

    sget v0, Lflyme/R$anim;->dock_bottom_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->dock_bottom_exit:I

    sget v0, Lflyme/R$anim;->dock_top_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->dock_top_enter:I

    sget v0, Lflyme/R$anim;->dock_top_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->dock_top_exit:I

    sget v0, Lflyme/R$anim;->input_method_cover_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_cover_enter:I

    sget v0, Lflyme/R$anim;->input_method_cover_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_cover_exit:I

    sget v0, Lflyme/R$anim;->input_method_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_enter:I

    sget v0, Lflyme/R$anim;->input_method_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_exit:I

    sget v0, Lflyme/R$anim;->input_method_fancy_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_fancy_enter:I

    sget v0, Lflyme/R$anim;->input_method_fancy_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->input_method_fancy_exit:I

    sget v0, Lflyme/R$anim;->magnifier_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->magnifier_enter:I

    sget v0, Lflyme/R$anim;->magnifier_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->magnifier_exit:I

    sget v0, Lflyme/R$anim;->mz_activity_extra_to_next_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_extra_to_next_close_enter:I

    sget v0, Lflyme/R$anim;->mz_activity_extra_to_next_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_extra_to_next_close_exit:I

    sget v0, Lflyme/R$anim;->mz_activity_extra_to_next_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_extra_to_next_open_enter:I

    sget v0, Lflyme/R$anim;->mz_activity_extra_to_next_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_extra_to_next_open_exit:I

    sget v0, Lflyme/R$anim;->mz_activity_to_next_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_to_next_close_enter:I

    sget v0, Lflyme/R$anim;->mz_activity_to_next_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_to_next_close_exit:I

    sget v0, Lflyme/R$anim;->mz_activity_to_next_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_to_next_open_enter:I

    sget v0, Lflyme/R$anim;->mz_activity_to_next_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_activity_to_next_open_exit:I

    sget v0, Lflyme/R$anim;->mz_app_to_next_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_app_to_next_close_enter:I

    sget v0, Lflyme/R$anim;->mz_app_to_next_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_app_to_next_close_exit:I

    sget v0, Lflyme/R$anim;->mz_app_to_next_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_app_to_next_open_enter:I

    sget v0, Lflyme/R$anim;->mz_app_to_next_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_app_to_next_open_exit:I

    sget v0, Lflyme/R$anim;->mz_app_to_next_wallpaper_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_app_to_next_wallpaper_open_exit:I

    sget v0, Lflyme/R$anim;->mz_calculator_big_to_middle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_calculator_big_to_middle:I

    sget v0, Lflyme/R$anim;->mz_calculator_big_to_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_calculator_big_to_small:I

    sget v0, Lflyme/R$anim;->mz_calculator_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_calculator_enter:I

    sget v0, Lflyme/R$anim;->mz_calculator_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_calculator_exit:I

    sget v0, Lflyme/R$anim;->mz_dialog_alert_anim_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_dialog_alert_anim_enter:I

    sget v0, Lflyme/R$anim;->mz_dialog_alert_anim_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_dialog_alert_anim_exit:I

    sget v0, Lflyme/R$anim;->mz_edit_new_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_edit_new_close_enter:I

    sget v0, Lflyme/R$anim;->mz_edit_new_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_edit_new_close_exit:I

    sget v0, Lflyme/R$anim;->mz_edit_new_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_edit_new_open_enter:I

    sget v0, Lflyme/R$anim;->mz_edit_new_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_edit_new_open_exit:I

    sget v0, Lflyme/R$anim;->mz_keyguard_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_keyguard_exit:I

    sget v0, Lflyme/R$anim;->mz_lock_screen_behind_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_lock_screen_behind_enter:I

    sget v0, Lflyme/R$anim;->mz_lock_screen_wallpaper_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_lock_screen_wallpaper_exit:I

    sget v0, Lflyme/R$anim;->mz_new_app_to_next_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_new_app_to_next_close_enter:I

    sget v0, Lflyme/R$anim;->mz_new_app_to_next_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_new_app_to_next_close_exit:I

    sget v0, Lflyme/R$anim;->mz_new_app_to_next_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_new_app_to_next_open_enter:I

    sget v0, Lflyme/R$anim;->mz_new_app_to_next_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_new_app_to_next_open_exit:I

    sget v0, Lflyme/R$anim;->mz_overflow_popup_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_overflow_popup_enter:I

    sget v0, Lflyme/R$anim;->mz_overflow_popup_enter_split:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_overflow_popup_enter_split:I

    sget v0, Lflyme/R$anim;->mz_overflow_popup_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_overflow_popup_exit:I

    sget v0, Lflyme/R$anim;->mz_overflow_popup_exit_split:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_overflow_popup_exit_split:I

    sget v0, Lflyme/R$anim;->mz_progress_indeterminate_horizontal_rect1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_progress_indeterminate_horizontal_rect1:I

    sget v0, Lflyme/R$anim;->mz_progress_indeterminate_horizontal_rect2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_progress_indeterminate_horizontal_rect2:I

    sget v0, Lflyme/R$anim;->mz_push_down_out_recent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_push_down_out_recent:I

    sget v0, Lflyme/R$anim;->mz_push_up_in_recent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_push_up_in_recent:I

    sget v0, Lflyme/R$anim;->mz_reso_anim_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_reso_anim_enter:I

    sget v0, Lflyme/R$anim;->mz_reso_anim_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_reso_anim_exit:I

    sget v0, Lflyme/R$anim;->mz_reso_back_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_reso_back_enter:I

    sget v0, Lflyme/R$anim;->mz_reso_back_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_reso_back_exit:I

    sget v0, Lflyme/R$anim;->mz_search_activity_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_search_activity_close_enter_alpha:I

    sget v0, Lflyme/R$anim;->mz_search_activity_close_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_search_activity_close_exit_alpha:I

    sget v0, Lflyme/R$anim;->mz_search_activity_open_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_search_activity_open_enter_alpha:I

    sget v0, Lflyme/R$anim;->mz_search_activity_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_search_activity_open_exit_alpha:I

    sget v0, Lflyme/R$anim;->mz_share_slide_in_from_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_share_slide_in_from_bottom:I

    sget v0, Lflyme/R$anim;->mz_share_slide_out_from_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_share_slide_out_from_bottom:I

    sget v0, Lflyme/R$anim;->mz_slide_in_from_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_slide_in_from_bottom:I

    sget v0, Lflyme/R$anim;->mz_slide_out_from_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_slide_out_from_bottom:I

    sget v0, Lflyme/R$anim;->mz_staggeredgridview_fade_out_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_staggeredgridview_fade_out_anim:I

    sget v0, Lflyme/R$anim;->mz_staggeredgridview_loading_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_staggeredgridview_loading_anim:I

    sget v0, Lflyme/R$anim;->mz_staggeredgridview_loading_layout_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_staggeredgridview_loading_layout_anim:I

    sget v0, Lflyme/R$anim;->mz_support_fragment_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_support_fragment_close_enter:I

    sget v0, Lflyme/R$anim;->mz_support_fragment_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_support_fragment_close_exit:I

    sget v0, Lflyme/R$anim;->mz_support_fragment_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_support_fragment_open_enter:I

    sget v0, Lflyme/R$anim;->mz_support_fragment_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_support_fragment_open_exit:I

    sget v0, Lflyme/R$anim;->mz_toast_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_toast_enter:I

    sget v0, Lflyme/R$anim;->mz_toast_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_toast_exit:I

    sget v0, Lflyme/R$anim;->mz_wallpaper_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_wallpaper_close_enter:I

    sget v0, Lflyme/R$anim;->mz_wallpaper_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_wallpaper_close_exit:I

    sget v0, Lflyme/R$anim;->mz_wallpaper_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_wallpaper_open_enter:I

    sget v0, Lflyme/R$anim;->mz_wallpaper_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_wallpaper_open_exit:I

    sget v0, Lflyme/R$anim;->mz_zoom_in_next_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_zoom_in_next_close_enter:I

    sget v0, Lflyme/R$anim;->mz_zoom_in_next_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_zoom_in_next_close_exit:I

    sget v0, Lflyme/R$anim;->mz_zoom_in_next_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_zoom_in_next_open_enter:I

    sget v0, Lflyme/R$anim;->mz_zoom_in_next_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->mz_zoom_in_next_open_exit:I

    sget v0, Lflyme/R$anim;->systemlock_translucent_enter_lock_panel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->systemlock_translucent_enter_lock_panel:I

    sget v0, Lflyme/R$anim;->systemlock_translucent_exit_lock_panel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->systemlock_translucent_exit_lock_panel:I

    sget v0, Lflyme/R$anim;->wallpaper_intra_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->wallpaper_intra_close_enter:I

    sget v0, Lflyme/R$anim;->wallpaper_intra_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->wallpaper_intra_close_exit:I

    sget v0, Lflyme/R$anim;->wallpaper_intra_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->wallpaper_intra_open_enter:I

    sget v0, Lflyme/R$anim;->wallpaper_intra_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$anim;->wallpaper_intra_open_exit:I

    sget v0, Lflyme/R$animator;->fragment_fade_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->fragment_fade_enter:I

    sget v0, Lflyme/R$animator;->fragment_fade_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->fragment_fade_exit:I

    sget v0, Lflyme/R$animator;->mz_fragment_close_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_fragment_close_enter:I

    sget v0, Lflyme/R$animator;->mz_fragment_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_fragment_close_exit:I

    sget v0, Lflyme/R$animator;->mz_fragment_open_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_fragment_open_enter:I

    sget v0, Lflyme/R$animator;->mz_fragment_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_fragment_open_exit:I

    sget v0, Lflyme/R$animator;->mz_search_fragment_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_search_fragment_close_enter_alpha:I

    sget v0, Lflyme/R$animator;->mz_search_fragment_close_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_search_fragment_close_exit_alpha:I

    sget v0, Lflyme/R$animator;->mz_search_fragment_open_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_search_fragment_open_enter_alpha:I

    sget v0, Lflyme/R$animator;->mz_search_fragment_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$animator;->mz_search_fragment_open_exit_alpha:I

    sget v0, Lflyme/R$array;->calendar_week_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->calendar_week_title:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesVeryDark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesVeryDark:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesWhite:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesWhite:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesWhiteVeryDark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLcdBacklightValuesWhiteVeryDark:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLevelsVeryDark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLevelsVeryDark:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLevelsWhite:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLevelsWhite:I

    sget v0, Lflyme/R$array;->config_autoBrightnessLevelsWhiteVeryDark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoBrightnessLevelsWhiteVeryDark:I

    sget v0, Lflyme/R$array;->config_autoDeltaBrightness:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoDeltaBrightness:I

    sget v0, Lflyme/R$array;->config_autoDeltaBrightnessDurations:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_autoDeltaBrightnessDurations:I

    sget v0, Lflyme/R$array;->config_cnLocationProviderPackageNames:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_cnLocationProviderPackageNames:I

    sget v0, Lflyme/R$array;->config_force_touch_levels:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_force_touch_levels:I

    sget v0, Lflyme/R$array;->config_homeKeyfeedbackVibePattern:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_homeKeyfeedbackVibePattern:I

    sget v0, Lflyme/R$array;->config_statusBarIcons:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->config_statusBarIcons:I

    sget v0, Lflyme/R$array;->device_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->device_color:I

    sget v0, Lflyme/R$array;->launcher_wallpaper_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->launcher_wallpaper_name:I

    sget v0, Lflyme/R$array;->lock_digit_icons:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->lock_digit_icons:I

    sget v0, Lflyme/R$array;->lock_digit_icons_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->lock_digit_icons_light:I

    sget v0, Lflyme/R$array;->lock_wallpaper_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->lock_wallpaper_name:I

    sget v0, Lflyme/R$array;->mz_app_to_next_open_enter_translate_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_app_to_next_open_enter_translate_y:I

    sget v0, Lflyme/R$array;->mz_app_to_next_open_exit_translate_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_app_to_next_open_exit_translate_y:I

    sget v0, Lflyme/R$array;->mz_colorful_round:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_colorful_round:I

    sget v0, Lflyme/R$array;->mz_colortheme_array:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_colortheme_array:I

    sget v0, Lflyme/R$array;->mz_edit_new_open_enter_bg_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_edit_new_open_enter_bg_alpha:I

    sget v0, Lflyme/R$array;->mz_pullline_move_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_pullline_move_end:I

    sget v0, Lflyme/R$array;->mz_pullline_move_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_pullline_move_start:I

    sget v0, Lflyme/R$array;->mz_smart_bar_configuration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_smart_bar_configuration:I

    sget v0, Lflyme/R$array;->mz_values_calculator_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_calculator_enter_alpha:I

    sget v0, Lflyme/R$array;->mz_values_calculator_enter_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_calculator_enter_scale:I

    sget v0, Lflyme/R$array;->mz_values_calculator_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_calculator_exit_alpha:I

    sget v0, Lflyme/R$array;->mz_values_calculator_exit_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_calculator_exit_scale:I

    sget v0, Lflyme/R$array;->mz_values_lock_num_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_lock_num_scale:I

    sget v0, Lflyme/R$array;->mz_values_text_shake:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_values_text_shake:I

    sget v0, Lflyme/R$array;->mz_zoom_in_next_close_exit_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_zoom_in_next_close_exit_scale:I

    sget v0, Lflyme/R$array;->mz_zoom_in_next_open_enter_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->mz_zoom_in_next_open_enter_scale:I

    sget v0, Lflyme/R$array;->preloaded_color_state_lists:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->preloaded_color_state_lists:I

    sget v0, Lflyme/R$array;->preloaded_drawables:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->preloaded_drawables:I

    sget v0, Lflyme/R$array;->smartbar_bottom_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smartbar_bottom_height:I

    sget v0, Lflyme/R$array;->smartbar_bottom_height_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smartbar_bottom_height_value:I

    sget v0, Lflyme/R$array;->smartbar_left_right_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smartbar_left_right_padding:I

    sget v0, Lflyme/R$array;->smartbar_left_right_padding_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smartbar_left_right_padding_value:I

    sget v0, Lflyme/R$array;->smile_icon_array:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smile_icon_array:I

    sget v0, Lflyme/R$array;->smile_text_array_for_mms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smile_text_array_for_mms:I

    sget v0, Lflyme/R$array;->smile_text_array_for_weibo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->smile_text_array_for_weibo:I

    sget v0, Lflyme/R$array;->system_ringtone_name_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->system_ringtone_name_list:I

    sget v0, Lflyme/R$array;->system_ringtone_value_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->system_ringtone_value_list:I

    sget v0, Lflyme/R$array;->urlspan_date_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->urlspan_date_dialog_title:I

    sget v0, Lflyme/R$array;->urlspan_email_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->urlspan_email_dialog_title:I

    sget v0, Lflyme/R$array;->urlspan_open_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->urlspan_open_dialog_title:I

    sget v0, Lflyme/R$array;->urlspan_open_dialog_title_chinamobile:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->urlspan_open_dialog_title_chinamobile:I

    sget v0, Lflyme/R$array;->urlspan_tel_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->urlspan_tel_dialog_title:I

    sget v0, Lflyme/R$array;->values_calculator_big_to_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_calculator_big_to_small:I

    sget v0, Lflyme/R$array;->values_close_enter_alpha_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_close_enter_alpha_app:I

    sget v0, Lflyme/R$array;->values_close_enter_scale_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_close_enter_scale_app:I

    sget v0, Lflyme/R$array;->values_close_exit_alpha_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_close_exit_alpha_app:I

    sget v0, Lflyme/R$array;->values_close_exit_alpha_bg_black_mask_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_close_exit_alpha_bg_black_mask_wallpaper:I

    sget v0, Lflyme/R$array;->values_close_exit_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_close_exit_translate_app:I

    sget v0, Lflyme/R$array;->values_extra_close_exit_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_extra_close_exit_translate_app:I

    sget v0, Lflyme/R$array;->values_extra_open_enter_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_extra_open_enter_translate_app:I

    sget v0, Lflyme/R$array;->values_fragment_close_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_fragment_close_interpolator:I

    sget v0, Lflyme/R$array;->values_fragment_open_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_fragment_open_interpolator:I

    sget v0, Lflyme/R$array;->values_input_method_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_input_method_enter_alpha:I

    sget v0, Lflyme/R$array;->values_input_method_enter_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_input_method_enter_translate:I

    sget v0, Lflyme/R$array;->values_input_method_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_input_method_exit_alpha:I

    sget v0, Lflyme/R$array;->values_input_method_exit_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_input_method_exit_translate:I

    sget v0, Lflyme/R$array;->values_open_enter_alpha_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_enter_alpha_app:I

    sget v0, Lflyme/R$array;->values_open_enter_alpha_bg_black_mask_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_enter_alpha_bg_black_mask_wallpaper:I

    sget v0, Lflyme/R$array;->values_open_enter_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_enter_translate_app:I

    sget v0, Lflyme/R$array;->values_open_exit_alpha_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_exit_alpha_app:I

    sget v0, Lflyme/R$array;->values_open_exit_scale_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_exit_scale_app:I

    sget v0, Lflyme/R$array;->values_open_staggeredgridview_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_staggeredgridview_alpha:I

    sget v0, Lflyme/R$array;->values_open_staggeredgridview_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$array;->values_open_staggeredgridview_scale:I

    sget v0, Lflyme/R$attr;->backIcon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->backIcon:I

    sget v0, Lflyme/R$attr;->bottomLayout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->bottomLayout:I

    sget v0, Lflyme/R$attr;->changeNumButtonText:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->changeNumButtonText:I

    sget v0, Lflyme/R$attr;->confirmMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->confirmMode:I

    sget v0, Lflyme/R$attr;->disableButtonText:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->disableButtonText:I

    sget v0, Lflyme/R$attr;->displayText:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->displayText:I

    sget v0, Lflyme/R$attr;->editTextExStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->editTextExStyle:I

    sget v0, Lflyme/R$attr;->emo_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_background:I

    sget v0, Lflyme/R$attr;->emo_col_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_col_count:I

    sget v0, Lflyme/R$attr;->emo_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_padding_bottom:I

    sget v0, Lflyme/R$attr;->emo_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_padding_left:I

    sget v0, Lflyme/R$attr;->emo_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_padding_right:I

    sget v0, Lflyme/R$attr;->emo_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_padding_top:I

    sget v0, Lflyme/R$attr;->emo_panel_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_panel_height:I

    sget v0, Lflyme/R$attr;->emo_panel_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_panel_width:I

    sget v0, Lflyme/R$attr;->emo_row_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->emo_row_count:I

    sget v0, Lflyme/R$attr;->enableButtonText:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->enableButtonText:I

    sget v0, Lflyme/R$attr;->enableHapticFeedback:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->enableHapticFeedback:I

    sget v0, Lflyme/R$attr;->isStealthMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->isStealthMode:I

    sget v0, Lflyme/R$attr;->isThemeDeviceDefault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->isThemeDeviceDefault:I

    sget v0, Lflyme/R$attr;->isThemeLight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->isThemeLight:I

    sget v0, Lflyme/R$attr;->maxCellLength:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->maxCellLength:I

    sget v0, Lflyme/R$attr;->mzActionBarSearchViewBackground:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzActionBarSearchViewBackground:I

    sget v0, Lflyme/R$attr;->mzActionIcon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzActionIcon:I

    sget v0, Lflyme/R$attr;->mzActionTextAppearance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzActionTextAppearance:I

    sget v0, Lflyme/R$attr;->mzActionViewBackground:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzActionViewBackground:I

    sget v0, Lflyme/R$attr;->mzAdjustSmartBarHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzAdjustSmartBarHeight:I

    sget v0, Lflyme/R$attr;->mzAlertDialogTheme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzAlertDialogTheme:I

    sget v0, Lflyme/R$attr;->mzAlpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzAlpha:I

    sget v0, Lflyme/R$attr;->mzCenterIcon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCenterIcon:I

    sget v0, Lflyme/R$attr;->mzCenterX:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCenterX:I

    sget v0, Lflyme/R$attr;->mzCenterY:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCenterY:I

    sget v0, Lflyme/R$attr;->mzCircleBarColor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCircleBarColor:I

    sget v0, Lflyme/R$attr;->mzCircleBarRimColor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCircleBarRimColor:I

    sget v0, Lflyme/R$attr;->mzCircleBarWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCircleBarWidth:I

    sget v0, Lflyme/R$attr;->mzClickRemoveId:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzClickRemoveId:I

    sget v0, Lflyme/R$attr;->mzClockwiseLoading:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzClockwiseLoading:I

    sget v0, Lflyme/R$attr;->mzCollapsedHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzCollapsedHeight:I

    sget v0, Lflyme/R$attr;->mzContentToastBackground:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzContentToastBackground:I

    sget v0, Lflyme/R$attr;->mzContentToastLayoutStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzContentToastLayoutStyle:I

    sget v0, Lflyme/R$attr;->mzDialogEditTextStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDialogEditTextStyle:I

    sget v0, Lflyme/R$attr;->mzDividerInside:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDividerInside:I

    sget v0, Lflyme/R$attr;->mzDragEnabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDragEnabled:I

    sget v0, Lflyme/R$attr;->mzDragHandleId:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDragHandleId:I

    sget v0, Lflyme/R$attr;->mzDragScrollStart:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDragScrollStart:I

    sget v0, Lflyme/R$attr;->mzDragStartMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDragStartMode:I

    sget v0, Lflyme/R$attr;->mzDrawSelectorOnTop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDrawSelectorOnTop:I

    sget v0, Lflyme/R$attr;->mzDropAnimationDuration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDropAnimationDuration:I

    sget v0, Lflyme/R$attr;->mzDropDownHorizontalOffset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDropDownHorizontalOffset:I

    sget v0, Lflyme/R$attr;->mzDropDownWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzDropDownWidth:I

    sget v0, Lflyme/R$attr;->mzFlingHandleId:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzFlingHandleId:I

    sget v0, Lflyme/R$attr;->mzFloatAlpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzFloatAlpha:I

    sget v0, Lflyme/R$attr;->mzFloatBackgroundColor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzFloatBackgroundColor:I

    sget v0, Lflyme/R$attr;->mzGravityStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzGravityStaticHint:I

    sget v0, Lflyme/R$attr;->mzIsXMapped:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzIsXMapped:I

    sget v0, Lflyme/R$attr;->mzIsYMapped:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzIsYMapped:I

    sget v0, Lflyme/R$attr;->mzIsZMapped:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzIsZMapped:I

    sget v0, Lflyme/R$attr;->mzItemMargin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzItemMargin:I

    sget v0, Lflyme/R$attr;->mzListPreferenceMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzListPreferenceMode:I

    sget v0, Lflyme/R$attr;->mzLockPasswordCellSize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzLockPasswordCellSize:I

    sget v0, Lflyme/R$attr;->mzLockPasswordHollowDrawable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzLockPasswordHollowDrawable:I

    sget v0, Lflyme/R$attr;->mzLockPasswordHollowVisible:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzLockPasswordHollowVisible:I

    sget v0, Lflyme/R$attr;->mzLockPasswordMaxNum:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzLockPasswordMaxNum:I

    sget v0, Lflyme/R$attr;->mzLockPasswordSolidDrawable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzLockPasswordSolidDrawable:I

    sget v0, Lflyme/R$attr;->mzMaxDragScrollSpeed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzMaxDragScrollSpeed:I

    sget v0, Lflyme/R$attr;->mzMaxDropDownHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzMaxDropDownHeight:I

    sget v0, Lflyme/R$attr;->mzNumColumns:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzNumColumns:I

    sget v0, Lflyme/R$attr;->mzPaddingBottomStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzPaddingBottomStaticHint:I

    sget v0, Lflyme/R$attr;->mzPaddingLeftStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzPaddingLeftStaticHint:I

    sget v0, Lflyme/R$attr;->mzPaddingRightStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzPaddingRightStaticHint:I

    sget v0, Lflyme/R$attr;->mzPaddingTopStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzPaddingTopStaticHint:I

    sget v0, Lflyme/R$attr;->mzRemoveAnimationDuration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRemoveAnimationDuration:I

    sget v0, Lflyme/R$attr;->mzRemoveEnabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRemoveEnabled:I

    sget v0, Lflyme/R$attr;->mzRemoveMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRemoveMode:I

    sget v0, Lflyme/R$attr;->mzReverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzReverse:I

    sget v0, Lflyme/R$attr;->mzRotateDegreeX:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRotateDegreeX:I

    sget v0, Lflyme/R$attr;->mzRotateDegreeY:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRotateDegreeY:I

    sget v0, Lflyme/R$attr;->mzRotateDegreeZ:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzRotateDegreeZ:I

    sget v0, Lflyme/R$attr;->mzScale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzScale:I

    sget v0, Lflyme/R$attr;->mzSearchButtonStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSearchButtonStyle:I

    sget v0, Lflyme/R$attr;->mzSearchEditClearIconStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSearchEditClearIconStyle:I

    sget v0, Lflyme/R$attr;->mzSearchEditSearchIconStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSearchEditSearchIconStyle:I

    sget v0, Lflyme/R$attr;->mzSearchEditTextStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSearchEditTextStyle:I

    sget v0, Lflyme/R$attr;->mzSearchEditVoiceIconStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSearchEditVoiceIconStyle:I

    sget v0, Lflyme/R$attr;->mzSelector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSelector:I

    sget v0, Lflyme/R$attr;->mzSlideShuffleSpeed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSlideShuffleSpeed:I

    sget v0, Lflyme/R$attr;->mzSortEnabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzSortEnabled:I

    sget v0, Lflyme/R$attr;->mzStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzStaticHint:I

    sget v0, Lflyme/R$attr;->mzStaticHintWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzStaticHintWidth:I

    sget v0, Lflyme/R$attr;->mzTextColorStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTextColorStaticHint:I

    sget v0, Lflyme/R$attr;->mzTextSizeStaticHint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTextSizeStaticHint:I

    sget v0, Lflyme/R$attr;->mzThemeColor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzThemeColor:I

    sget v0, Lflyme/R$attr;->mzThumbOff:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzThumbOff:I

    sget v0, Lflyme/R$attr;->mzThumbOn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzThumbOn:I

    sget v0, Lflyme/R$attr;->mzTitleTextAppearance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTitleTextAppearance:I

    sget v0, Lflyme/R$attr;->mzTrackDragSort:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTrackDragSort:I

    sget v0, Lflyme/R$attr;->mzTranslateDisX:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateDisX:I

    sget v0, Lflyme/R$attr;->mzTranslateDisY:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateDisY:I

    sget v0, Lflyme/R$attr;->mzTranslateDisZ:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateDisZ:I

    sget v0, Lflyme/R$attr;->mzTranslateX:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateX:I

    sget v0, Lflyme/R$attr;->mzTranslateY:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateY:I

    sget v0, Lflyme/R$attr;->mzTranslateZ:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzTranslateZ:I

    sget v0, Lflyme/R$attr;->mzUseDefaultController:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->mzUseDefaultController:I

    sget v0, Lflyme/R$attr;->topButtonStat:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$attr;->topButtonStat:I

    sget v0, Lflyme/R$bool;->config_Software_AutoDurations_available:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_Software_AutoDurations_available:I

    sget v0, Lflyme/R$bool;->config_alwaysUseCdmaRssi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_alwaysUseCdmaRssi:I

    sget v0, Lflyme/R$bool;->config_automatic_brightness_available:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_automatic_brightness_available:I

    sget v0, Lflyme/R$bool;->config_brightness_mapping:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_brightness_mapping:I

    sget v0, Lflyme/R$bool;->config_electronBeamOffEnabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_electronBeamOffEnabled:I

    sget v0, Lflyme/R$bool;->config_enableLockScreenRotation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_enableLockScreenRotation:I

    sget v0, Lflyme/R$bool;->config_enableLockScreenTranslucentDecor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_enableLockScreenTranslucentDecor:I

    sget v0, Lflyme/R$bool;->config_enableScreenshotChord:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_enableScreenshotChord:I

    sget v0, Lflyme/R$bool;->config_setup_mms_data:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_setup_mms_data:I

    sget v0, Lflyme/R$bool;->config_showNavigationBar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_showNavigationBar:I

    sget v0, Lflyme/R$bool;->config_sim_switch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_sim_switch:I

    sget v0, Lflyme/R$bool;->config_speed_up_audio_on_mt_calls_ex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_speed_up_audio_on_mt_calls_ex:I

    sget v0, Lflyme/R$bool;->config_wimaxEnabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$bool;->config_wimaxEnabled:I

    sget v0, Lflyme/R$color;->bright_foreground_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->bright_foreground_dark:I

    sget v0, Lflyme/R$color;->calendar_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->calendar_color:I

    sget v0, Lflyme/R$color;->calendar_dayofweek_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->calendar_dayofweek_color:I

    sget v0, Lflyme/R$color;->calendar_shadowcolor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->calendar_shadowcolor:I

    sget v0, Lflyme/R$color;->contactheader_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->contactheader_text_color:I

    sget v0, Lflyme/R$color;->contactheader_text_detail:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->contactheader_text_detail:I

    sget v0, Lflyme/R$color;->list_hovered_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->list_hovered_background:I

    sget v0, Lflyme/R$color;->mz_8e_alpha_black_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_8e_alpha_black_color:I

    sget v0, Lflyme/R$color;->mz_action_bar_right_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_right_text_color:I

    sget v0, Lflyme/R$color;->mz_action_bar_search_text_color_hint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_search_text_color_hint:I

    sget v0, Lflyme/R$color;->mz_action_bar_search_text_color_hint_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_search_text_color_hint_white:I

    sget v0, Lflyme/R$color;->mz_action_bar_search_text_color_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_search_text_color_white:I

    sget v0, Lflyme/R$color;->mz_action_bar_subtitle_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_subtitle_color:I

    sget v0, Lflyme/R$color;->mz_action_bar_title_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_bar_title_color:I

    sget v0, Lflyme/R$color;->mz_action_menu_textcolor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_menu_textcolor:I

    sget v0, Lflyme/R$color;->mz_action_menu_textcolor_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_menu_textcolor_disabled:I

    sget v0, Lflyme/R$color;->mz_action_menu_textcolor_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_action_menu_textcolor_normal:I

    sget v0, Lflyme/R$color;->mz_actionbar_progress_primary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_actionbar_progress_primary:I

    sget v0, Lflyme/R$color;->mz_alert_dialog_edittext_highlighted_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_alert_dialog_edittext_highlighted_color:I

    sget v0, Lflyme/R$color;->mz_alert_dialog_edittext_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_alert_dialog_edittext_text_color:I

    sget v0, Lflyme/R$color;->mz_alert_showat_bottom_blue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_alert_showat_bottom_blue:I

    sget v0, Lflyme/R$color;->mz_alert_showat_bottom_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_alert_showat_bottom_red:I

    sget v0, Lflyme/R$color;->mz_background_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_background_dark:I

    sget v0, Lflyme/R$color;->mz_background_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_background_light:I

    sget v0, Lflyme/R$color;->mz_bright_foreground_disabled_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_bright_foreground_disabled_light:I

    sget v0, Lflyme/R$color;->mz_bright_foreground_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_bright_foreground_light:I

    sget v0, Lflyme/R$color;->mz_btn_default_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_btn_default_light:I

    sget v0, Lflyme/R$color;->mz_btn_dialog_alert_long_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_btn_dialog_alert_long_pressed:I

    sget v0, Lflyme/R$color;->mz_btn_dialog_alert_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_btn_dialog_alert_pressed:I

    sget v0, Lflyme/R$color;->mz_button_corner_stroke_text_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_button_corner_stroke_text_color_default:I

    sget v0, Lflyme/R$color;->mz_button_corner_text_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_button_corner_text_color_default:I

    sget v0, Lflyme/R$color;->mz_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_button_light:I

    sget v0, Lflyme/R$color;->mz_button_positive_text_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_button_positive_text_default:I

    sget v0, Lflyme/R$color;->mz_button_text_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_button_text_color_default:I

    sget v0, Lflyme/R$color;->mz_buttonbar_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_buttonbar_color:I

    sget v0, Lflyme/R$color;->mz_cc_alpha_black_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_cc_alpha_black_color:I

    sget v0, Lflyme/R$color;->mz_cc_alpha_black_color_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_cc_alpha_black_color_disable:I

    sget v0, Lflyme/R$color;->mz_cir_btn_color_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_cir_btn_color_disable:I

    sget v0, Lflyme/R$color;->mz_circle_progressbar_color_blue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_circle_progressbar_color_blue:I

    sget v0, Lflyme/R$color;->mz_circle_progressbar_color_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_circle_progressbar_color_white:I

    sget v0, Lflyme/R$color;->mz_circle_progressbar_rim_color_blue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_circle_progressbar_rim_color_blue:I

    sget v0, Lflyme/R$color;->mz_circle_progressbar_rim_color_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_circle_progressbar_rim_color_white:I

    sget v0, Lflyme/R$color;->mz_dark_action_bar_tab_select_textcolor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dark_action_bar_tab_select_textcolor:I

    sget v0, Lflyme/R$color;->mz_dark_action_bar_textcolor_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dark_action_bar_textcolor_disabled:I

    sget v0, Lflyme/R$color;->mz_dark_action_bar_textcolor_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dark_action_bar_textcolor_normal:I

    sget v0, Lflyme/R$color;->mz_dark_background_color_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dark_background_color_dark:I

    sget v0, Lflyme/R$color;->mz_dark_background_divide_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dark_background_divide_color:I

    sget v0, Lflyme/R$color;->mz_device_default_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_device_default_color:I

    sget v0, Lflyme/R$color;->mz_dialog_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dialog_button_text:I

    sget v0, Lflyme/R$color;->mz_dialog_checked_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dialog_checked_text:I

    sget v0, Lflyme/R$color;->mz_dim_foreground_disabled_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dim_foreground_disabled_light:I

    sget v0, Lflyme/R$color;->mz_dim_foreground_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_dim_foreground_light:I

    sget v0, Lflyme/R$color;->mz_drag_shadow_hightlight_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_drag_shadow_hightlight_normal:I

    sget v0, Lflyme/R$color;->mz_drag_shadow_hightlight_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_drag_shadow_hightlight_warning:I

    sget v0, Lflyme/R$color;->mz_edge_effect_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_edge_effect_color:I

    sget v0, Lflyme/R$color;->mz_edittext_preference_hint_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_edittext_preference_hint_text_color:I

    sget v0, Lflyme/R$color;->mz_favor_select_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_favor_select_text:I

    sget v0, Lflyme/R$color;->mz_foreground_hight_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_foreground_hight_light:I

    sget v0, Lflyme/R$color;->mz_global_bg_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_global_bg_color:I

    sget v0, Lflyme/R$color;->mz_global_restart_bg_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_global_restart_bg_color:I

    sget v0, Lflyme/R$color;->mz_global_shutdown_bg_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_global_shutdown_bg_color:I

    sget v0, Lflyme/R$color;->mz_grid_menu_pressed_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_grid_menu_pressed_color:I

    sget v0, Lflyme/R$color;->mz_highlighted_text_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_highlighted_text_dark:I

    sget v0, Lflyme/R$color;->mz_highlighted_text_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_highlighted_text_light:I

    sget v0, Lflyme/R$color;->mz_hint_foreground_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_hint_foreground_light:I

    sget v0, Lflyme/R$color;->mz_hint_text_color_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_hint_text_color_light:I

    sget v0, Lflyme/R$color;->mz_image_view_shadow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_image_view_shadow:I

    sget v0, Lflyme/R$color;->mz_list_comment_right_text_color_grey:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_comment_right_text_color_grey:I

    sget v0, Lflyme/R$color;->mz_list_comment_right_text_color_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_comment_right_text_color_red:I

    sget v0, Lflyme/R$color;->mz_list_item_background_dark_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_item_background_dark_color:I

    sget v0, Lflyme/R$color;->mz_list_link_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_link_text_color:I

    sget v0, Lflyme/R$color;->mz_list_link_text_color_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_link_text_color_disabled:I

    sget v0, Lflyme/R$color;->mz_list_link_text_color_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_link_text_color_normal:I

    sget v0, Lflyme/R$color;->mz_list_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_text_color:I

    sget v0, Lflyme/R$color;->mz_list_text_color_alpha_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_text_color_alpha_4:I

    sget v0, Lflyme/R$color;->mz_list_text_color_alpha_50:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_text_color_alpha_50:I

    sget v0, Lflyme/R$color;->mz_list_text_color_dark_alpha_20:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_text_color_dark_alpha_20:I

    sget v0, Lflyme/R$color;->mz_list_text_color_dark_alpha_60:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_list_text_color_dark_alpha_60:I

    sget v0, Lflyme/R$color;->mz_notification_action_color_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_notification_action_color_disable:I

    sget v0, Lflyme/R$color;->mz_notification_action_color_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_notification_action_color_normal:I

    sget v0, Lflyme/R$color;->mz_notification_action_color_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_notification_action_color_pressed:I

    sget v0, Lflyme/R$color;->mz_picker_selected_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_picker_selected_color:I

    sget v0, Lflyme/R$color;->mz_picker_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_picker_text_color:I

    sget v0, Lflyme/R$color;->mz_picker_unselected_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_picker_unselected_color:I

    sget v0, Lflyme/R$color;->mz_popup_checked_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_popup_checked_text_color:I

    sget v0, Lflyme/R$color;->mz_popup_text_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_popup_text_light:I

    sget v0, Lflyme/R$color;->mz_popup_text_light_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_popup_text_light_disabled:I

    sget v0, Lflyme/R$color;->mz_primary_text_color_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_primary_text_color_light:I

    sget v0, Lflyme/R$color;->mz_primary_text_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_primary_text_light:I

    sget v0, Lflyme/R$color;->mz_ripple_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_ripple_light:I

    sget v0, Lflyme/R$color;->mz_search_button_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_search_button_color:I

    sget v0, Lflyme/R$color;->mz_search_button_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_search_button_text_color:I

    sget v0, Lflyme/R$color;->mz_search_edit_text_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_search_edit_text_light:I

    sget v0, Lflyme/R$color;->mz_secondary_text_color_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_secondary_text_color_light:I

    sget v0, Lflyme/R$color;->mz_secondary_text_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_secondary_text_light:I

    sget v0, Lflyme/R$color;->mz_selection_button_text_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_selection_button_text_color:I

    sget v0, Lflyme/R$color;->mz_slidingmenu_background_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_slidingmenu_background_light:I

    sget v0, Lflyme/R$color;->mz_slidingmenu_item_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_slidingmenu_item_activated:I

    sget v0, Lflyme/R$color;->mz_staic_hint_text_color_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_staic_hint_text_color_light:I

    sget v0, Lflyme/R$color;->mz_text_view_color_black:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_text_view_color_black:I

    sget v0, Lflyme/R$color;->mz_text_view_color_black_alpha_40:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_text_view_color_black_alpha_40:I

    sget v0, Lflyme/R$color;->mz_theme_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_theme_color_default:I

    sget v0, Lflyme/R$color;->mz_titlebar_background_divide_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_titlebar_background_divide_color:I

    sget v0, Lflyme/R$color;->mz_titlebar_background_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_titlebar_background_white:I

    sget v0, Lflyme/R$color;->mz_titlebar_tab_divide_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_titlebar_tab_divide_color:I

    sget v0, Lflyme/R$color;->mz_wallpaper_animation_mask:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_wallpaper_animation_mask:I

    sget v0, Lflyme/R$color;->mz_white_action_bar_textcolor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_white_action_bar_textcolor:I

    sget v0, Lflyme/R$color;->mz_white_action_bar_textcolor_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_white_action_bar_textcolor_disabled:I

    sget v0, Lflyme/R$color;->mz_white_action_bar_textcolor_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->mz_white_action_bar_textcolor_normal:I

    sget v0, Lflyme/R$color;->secondary_text_default_material_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$color;->secondary_text_default_material_light:I

    sget v0, Lflyme/R$dimen;->action_bar_icon_vertical_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->action_bar_icon_vertical_padding:I

    sget v0, Lflyme/R$dimen;->action_button_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->action_button_min_width:I

    sget v0, Lflyme/R$dimen;->amp_cicle_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->amp_cicle_size:I

    sget v0, Lflyme/R$dimen;->calendar_day_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->calendar_day_left:I

    sget v0, Lflyme/R$dimen;->calendar_week_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->calendar_week_bottom:I

    sget v0, Lflyme/R$dimen;->calendar_week_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->calendar_week_size:I

    sget v0, Lflyme/R$dimen;->calendar_week_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->calendar_week_top:I

    sget v0, Lflyme/R$dimen;->cancel_paddingBottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->cancel_paddingBottom:I

    sget v0, Lflyme/R$dimen;->cancel_paddingLeft:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->cancel_paddingLeft:I

    sget v0, Lflyme/R$dimen;->cancel_paddingRight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->cancel_paddingRight:I

    sget v0, Lflyme/R$dimen;->cancel_paddingTop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->cancel_paddingTop:I

    sget v0, Lflyme/R$dimen;->edit_hintpadding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->edit_hintpadding:I

    sget v0, Lflyme/R$dimen;->emo_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_padding_bottom:I

    sget v0, Lflyme/R$dimen;->emo_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_padding_left:I

    sget v0, Lflyme/R$dimen;->emo_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_padding_right:I

    sget v0, Lflyme/R$dimen;->emo_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_padding_top:I

    sget v0, Lflyme/R$dimen;->emo_panel_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_panel_height:I

    sget v0, Lflyme/R$dimen;->emo_panel_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->emo_panel_width:I

    sget v0, Lflyme/R$dimen;->fastscroll_overlay_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->fastscroll_overlay_text_size:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_empty_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_empty_height:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_empty_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_empty_width:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_height:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_last_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_last_height:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_last_item_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_last_item_margin_bottom:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_last_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_last_padding_top:I

    sget v0, Lflyme/R$dimen;->global_dialog_close_linear_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_close_linear_width:I

    sget v0, Lflyme/R$dimen;->global_dialog_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_padding_bottom:I

    sget v0, Lflyme/R$dimen;->global_dialog_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_padding_top:I

    sget v0, Lflyme/R$dimen;->global_dialog_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_text_size:I

    sget v0, Lflyme/R$dimen;->global_dialog_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->global_dialog_width:I

    sget v0, Lflyme/R$dimen;->magnifier_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->magnifier_height:I

    sget v0, Lflyme/R$dimen;->magnifier_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->magnifier_width:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_back_button_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_back_button_width:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_custom_view_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_custom_view_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_custom_view_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_custom_view_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_default_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_default_height:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_icon_horizontal_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_icon_horizontal_padding:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_progress_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_progress_height:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_right_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_right_text_size:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_spinner_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_spinner_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_subtitle_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_subtitle_text_size:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_title_margin_left_land:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_title_margin_left_land:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_title_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_title_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_title_max_width_land:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_title_max_width_land:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_title_max_width_port:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_title_max_width_port:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_title_text_size:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_top_tab_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_top_tab_height:I

    sget v0, Lflyme/R$dimen;->mz_action_bar_up_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_bar_up_min_width:I

    sget v0, Lflyme/R$dimen;->mz_action_button_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_button_min_height:I

    sget v0, Lflyme/R$dimen;->mz_action_button_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_button_min_width:I

    sget v0, Lflyme/R$dimen;->mz_action_item_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_action_item_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_buttom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_buttom:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_content_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_haslist_title_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_haslist_title_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_haslist_title_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_haslist_title_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_list_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_list_item_height:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_message_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_message_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_message_margin_bottom_no_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_message_margin_bottom_no_btn:I

    sget v0, Lflyme/R$dimen;->mz_alertDialog_title_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alertDialog_title_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_btn_min_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_btn_min_padding:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_button_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_button_bar_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_button_diameter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_button_diameter:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_button_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_button_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_button_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_button_text_size:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_checkbox_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_checkbox_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_content_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_content_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_cursor_to_hint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_cursor_to_hint:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_inner_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_inner_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_inner_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_inner_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_line_spacing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_line_spacing:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_edittext_text_size:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_max_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_as_title_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_as_title_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_icon_margin_buttom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_icon_margin_buttom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_limited_width_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_limited_width_value:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_message_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_no_button_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_no_button_min_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_no_button_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_no_button_min_width:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_no_title_edittext_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_no_title_edittext_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_one_edittext_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_one_edittext_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_panel_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_panel_min_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_text_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_text_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_text_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_text_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_threebutton_pos_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_threebutton_pos_padding:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_check_box_margin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_check_box_margin:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_edittext_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_list_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_list_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_list_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_list_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_min_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_scrolltextview_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_scrolltextview_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_scrolltextview_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_scrolltextview_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_title_text_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_title_text_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_width:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_with_button_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_with_button_min_height:I

    sget v0, Lflyme/R$dimen;->mz_alert_dialog_with_button_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_alert_dialog_with_button_min_width:I

    sget v0, Lflyme/R$dimen;->mz_anim_checkbox_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_anim_checkbox_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_btn_stroke_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_btn_stroke_width:I

    sget v0, Lflyme/R$dimen;->mz_button_inset_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_button_inset_horizontal:I

    sget v0, Lflyme/R$dimen;->mz_button_inset_vertical:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_button_inset_vertical:I

    sget v0, Lflyme/R$dimen;->mz_button_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_button_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_card_list_item_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_card_list_item_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_card_list_item_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_card_list_item_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_cir_btn_radius_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_cir_btn_radius_normal:I

    sget v0, Lflyme/R$dimen;->mz_circle_icon_radio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_circle_icon_radio:I

    sget v0, Lflyme/R$dimen;->mz_circle_progressbar_layout_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_circle_progressbar_layout_height:I

    sget v0, Lflyme/R$dimen;->mz_circle_progressbar_layout_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_circle_progressbar_layout_width:I

    sget v0, Lflyme/R$dimen;->mz_circle_progressbar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_circle_progressbar_width:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_checkbox_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_checkbox_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_checkbox_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_checkbox_width:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_date_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_date_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_date_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_date_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_date_text_size_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_date_text_size_normal:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_date_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_date_width:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_icon_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_icon_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_list_item_height_huge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_list_item_height_huge:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_list_item_height_super_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_list_item_height_super_large:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text1_max_width_land:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text1_max_width_land:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text1_max_width_port:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text1_max_width_port:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text1_size_huge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text1_size_huge:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text1_size_super_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text1_size_super_large:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text2_size_huge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text2_size_huge:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_text2_size_super_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_text2_size_super_large:I

    sget v0, Lflyme/R$dimen;->mz_contactbadge_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_contactbadge_width:I

    sget v0, Lflyme/R$dimen;->mz_default_smartbar_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_default_smartbar_padding:I

    sget v0, Lflyme/R$dimen;->mz_delay_spring_back_max_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_delay_spring_back_max_top:I

    sget v0, Lflyme/R$dimen;->mz_dialog_bottom_shadow_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_dialog_bottom_shadow_height:I

    sget v0, Lflyme/R$dimen;->mz_dialog_custom_view_margin_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_dialog_custom_view_margin_horizontal:I

    sget v0, Lflyme/R$dimen;->mz_dialog_top_shadow_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_dialog_top_shadow_height:I

    sget v0, Lflyme/R$dimen;->mz_disabled_alpha_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_disabled_alpha_light:I

    sget v0, Lflyme/R$dimen;->mz_draw_radio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_draw_radio:I

    sget v0, Lflyme/R$dimen;->mz_dropdown_list_header_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_dropdown_list_header_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_dropdown_list_header_text_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_dropdown_list_header_text_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_offset_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_offset_right:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_offset_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_offset_top:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_overlay_float_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_overlay_float_size:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_overlay_text_offset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_overlay_text_offset:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_overlay_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_overlay_text_size:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_track_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_track_padding:I

    sget v0, Lflyme/R$dimen;->mz_fastscroll_verticalbar_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_fastscroll_verticalbar_padding:I

    sget v0, Lflyme/R$dimen;->mz_global_button_diameter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_global_button_diameter:I

    sget v0, Lflyme/R$dimen;->mz_global_button_gap:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_global_button_gap:I

    sget v0, Lflyme/R$dimen;->mz_global_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_global_text_size:I

    sget v0, Lflyme/R$dimen;->mz_group_header_title_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_header_title_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_group_interval_header_divider_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_interval_header_divider_height:I

    sget v0, Lflyme/R$dimen;->mz_group_interval_header_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_interval_header_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_group_interval_header_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_interval_header_text_size:I

    sget v0, Lflyme/R$dimen;->mz_group_interval_header_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_interval_header_title_height:I

    sget v0, Lflyme/R$dimen;->mz_group_list_footer_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_list_footer_height:I

    sget v0, Lflyme/R$dimen;->mz_group_top_header_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_group_top_header_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_left_checkbox_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_left_checkbox_width:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_item_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_item_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_item_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_item_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_item_text_12_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_item_text_12_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_item_text_23_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_item_text_23_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_little_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_little_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_text_pic_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_text_pic_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_title_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_title_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_1_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_1_title_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_card_2_little_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_2_little_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_2_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_2_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_2_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_2_title_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_content_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_height:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_weight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_right_pic_weight:I

    sget v0, Lflyme/R$dimen;->mz_list_card_partition_right_text_pic_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_card_partition_right_text_pic_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_little_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_little_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_pic_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_pic_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_pic_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_pic_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_weight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_pic_weight:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_pic_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_right_label_text_pic_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_text_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_text_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_text_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_text_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_text_pic_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_text_pic_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_title_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_title_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_title_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_title_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_title_large_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_title_large_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_1_title_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_1_title_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_little_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_little_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_pic_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_pic_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_pic_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_pic_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_text_pic_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_text_pic_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_title_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_title_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_2_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_2_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_circle_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_circle_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_circle_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_circle_width:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_category_contact_partition_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_contact_partition_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_identity_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_identity_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_identity_large_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_identity_large_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_identity_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_identity_width:I

    sget v0, Lflyme/R$dimen;->mz_list_category_inner_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_inner_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_content_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_category_partition_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_partition_height:I

    sget v0, Lflyme/R$dimen;->mz_list_category_right_label_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_right_label_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_category_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_category_title_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_check_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_check_width:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_content_line_spacing_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_content_line_spacing_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_content_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_content_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_divider_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_divider_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_divider_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_divider_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_left_image_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_left_image_height:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_left_image_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_left_image_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_left_image_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_left_image_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_left_image_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_left_image_width:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_ratingstar_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_ratingstar_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_pic_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_pic_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_praise_pic_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_praise_pic_height:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_praise_pic_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_praise_pic_width:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_right_result_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_title_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_title_margin_left:I

    invoke-static {p0}, Lflyme/R;->onResourcesLoaded2(I)V

    return-void
.end method

.method private static onResourcesLoaded2(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    sget v0, Lflyme/R$dimen;->mz_list_comment_title_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_title_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_list_comment_title_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_comment_title_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_desc_line_spacing_extra:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_desc_line_spacing_extra:I

    sget v0, Lflyme/R$dimen;->mz_list_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_hold_distance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_hold_distance:I

    sget v0, Lflyme/R$dimen;->mz_list_hold_offset_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_hold_offset_top:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_and_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_and_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_height_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_height_large:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_height_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_height_small:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_text_12_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_text_12_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_text_23_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_text_23_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_text_2_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_text_2_size:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_text_3_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_text_3_size:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_item_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_item_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_large_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_large_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_large_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_large_height:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_large_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_large_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_large_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_large_width:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_medium_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_medium_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_medium_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_medium_height:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_medium_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_medium_width:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_small_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_small_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_small_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_small_height:I

    sget v0, Lflyme/R$dimen;->mz_list_icon_small_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_icon_small_width:I

    sget v0, Lflyme/R$dimen;->mz_list_image_and_text_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_and_text_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_image_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_image_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_image_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_height:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_height:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_height_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_height_large:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_height_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_height_small:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_text_12_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_text_12_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_text_23_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_text_23_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_image_item_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_item_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_image_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_image_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_image_width:I

    sget v0, Lflyme/R$dimen;->mz_list_index_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_index_title_height:I

    sget v0, Lflyme/R$dimen;->mz_list_index_title_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_index_title_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_index_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_index_title_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_inner_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_inner_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_item_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_item_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_item_content_padding_right_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_content_padding_right_2:I

    sget v0, Lflyme/R$dimen;->mz_list_item_dark_text_2_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_dark_text_2_size:I

    sget v0, Lflyme/R$dimen;->mz_list_item_dark_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_dark_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_height:I

    sget v0, Lflyme/R$dimen;->mz_list_item_height_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_height_large:I

    sget v0, Lflyme/R$dimen;->mz_list_item_height_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_height_small:I

    sget v0, Lflyme/R$dimen;->mz_list_item_left_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_left_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_list_item_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_item_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_item_padding_left_inner:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_padding_left_inner:I

    sget v0, Lflyme/R$dimen;->mz_list_item_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_item_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_12_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_12_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_23_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_23_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_2_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_2_size:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_33_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_33_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_3_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_3_size:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_raw_space:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_raw_space:I

    sget v0, Lflyme/R$dimen;->mz_list_item_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_item_title_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_item_title_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_label_inner_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_label_inner_height:I

    sget v0, Lflyme/R$dimen;->mz_list_label_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_label_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_check_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_check_height:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_check_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_check_width:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_height:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_item_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_item_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_nest_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_nest_text_size:I

    sget v0, Lflyme/R$dimen;->mz_list_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_partition_header_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_partition_header_height:I

    sget v0, Lflyme/R$dimen;->mz_list_partition_header_large_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_partition_header_large_height:I

    sget v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_partition_header_title_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_list_scrollbar_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_scrollbar_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_inner_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_inner_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_inner_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_inner_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_length:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_length:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_padding:I

    sget v0, Lflyme/R$dimen;->mz_list_tag_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_list_tag_text_size:I

    sget v0, Lflyme/R$dimen;->mz_lock_digit_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_lock_digit_textsize:I

    sget v0, Lflyme/R$dimen;->mz_menu_pop_list_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_menu_pop_list_height:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_one_padding_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_one_padding_end:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_one_padding_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_one_padding_start:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_three_padding_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_three_padding_end:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_three_padding_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_three_padding_start:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_two_padding_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_two_padding_end:I

    sget v0, Lflyme/R$dimen;->mz_notification_action0_layout_two_padding_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action0_layout_two_padding_start:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_cir_radius_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_cir_radius_normal:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_bottom_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_bottom_headsup:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_end:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_end_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_end_headsup:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_start:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_start_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_start_headsup:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_notification_action_list_margin_top_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_action_list_margin_top_headsup:I

    sget v0, Lflyme/R$dimen;->mz_notification_base_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_base_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_notification_base_padding_right_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_base_padding_right_headsup:I

    sget v0, Lflyme/R$dimen;->mz_notification_big_picture_actions_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_big_picture_actions_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_notification_big_picture_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_big_picture_height:I

    sget v0, Lflyme/R$dimen;->mz_notification_small_icon_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_small_icon_height:I

    sget v0, Lflyme/R$dimen;->mz_notification_small_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_small_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_notification_time_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_notification_time_size:I

    sget v0, Lflyme/R$dimen;->mz_option_menu_list_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_option_menu_list_width:I

    sget v0, Lflyme/R$dimen;->mz_over_scroll_distance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_over_scroll_distance:I

    sget v0, Lflyme/R$dimen;->mz_paragraph_huge_line_spacing_extra:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_paragraph_huge_line_spacing_extra:I

    sget v0, Lflyme/R$dimen;->mz_paragraph_large_line_spacing_extra:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_paragraph_large_line_spacing_extra:I

    sget v0, Lflyme/R$dimen;->mz_paragraph_normal_line_spacing_extra:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_paragraph_normal_line_spacing_extra:I

    sget v0, Lflyme/R$dimen;->mz_paragraph_small_line_spacing_extra:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_paragraph_small_line_spacing_extra:I

    sget v0, Lflyme/R$dimen;->mz_password_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_password_padding:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_1_text_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_1_text_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_2_text_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_2_text_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_3_text_1_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_3_text_1_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_3_text_2_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_3_text_2_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_3_text_3_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_3_text_3_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_column_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_column_width:I

    sget v0, Lflyme/R$dimen;->mz_picker_day_scroll_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_day_scroll_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_day_text_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_day_text_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_height:I

    sget v0, Lflyme/R$dimen;->mz_picker_layout_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_layout_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_picker_layout_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_layout_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_picker_layout_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_layout_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_layout_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_layout_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_picker_month_scroll_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_month_scroll_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_month_text_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_month_text_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_offset_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_offset_y:I

    sget v0, Lflyme/R$dimen;->mz_picker_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_picker_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_scroll_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_scroll_item_height:I

    sget v0, Lflyme/R$dimen;->mz_picker_selected_ampm_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_selected_ampm_size:I

    sget v0, Lflyme/R$dimen;->mz_picker_selected_number_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_selected_number_size:I

    sget v0, Lflyme/R$dimen;->mz_picker_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_text_size:I

    sget v0, Lflyme/R$dimen;->mz_picker_text_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_text_width:I

    sget v0, Lflyme/R$dimen;->mz_picker_unselected_ampm_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_unselected_ampm_size:I

    sget v0, Lflyme/R$dimen;->mz_picker_unselected_number_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_unselected_number_size:I

    sget v0, Lflyme/R$dimen;->mz_picker_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_width:I

    sget v0, Lflyme/R$dimen;->mz_picker_year_column_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_year_column_width:I

    sget v0, Lflyme/R$dimen;->mz_picker_year_scroll_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_year_scroll_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_picker_year_text_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_picker_year_text_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_header_title_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_pinned_interval_header_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_interval_header_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_pinned_interval_header_title_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_interval_header_title_height:I

    sget v0, Lflyme/R$dimen;->mz_pinned_top_header_minHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pinned_top_header_minHeight:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_content_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_content_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_content_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_content_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_multichoice_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_multichoice_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_popup_list_item_singlechoice_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_list_item_singlechoice_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_popup_menu_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_menu_item_height:I

    sget v0, Lflyme/R$dimen;->mz_popup_menu_item_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_menu_item_min_width:I

    sget v0, Lflyme/R$dimen;->mz_popup_menu_min_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_menu_min_width:I

    sget v0, Lflyme/R$dimen;->mz_popup_menu_window_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_menu_window_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_popup_menu_window_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_popup_menu_window_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_category_mini_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_category_mini_height:I

    sget v0, Lflyme/R$dimen;->mz_preference_category_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_category_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_preference_category_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_category_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_preference_category_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_category_text_size:I

    sget v0, Lflyme/R$dimen;->mz_preference_checkbox_divider_marginTop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_checkbox_divider_marginTop:I

    sget v0, Lflyme/R$dimen;->mz_preference_checkbox_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_checkbox_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_checkbox_widget_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_checkbox_widget_width:I

    sget v0, Lflyme/R$dimen;->mz_preference_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_preference_divider_padding_left_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_divider_padding_left_icon:I

    sget v0, Lflyme/R$dimen;->mz_preference_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_divider_padding_right_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_divider_padding_right_icon:I

    sget v0, Lflyme/R$dimen;->mz_preference_gap_between_divider_and_checkbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_gap_between_divider_and_checkbox:I

    sget v0, Lflyme/R$dimen;->mz_preference_header_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_header_item_height:I

    sget v0, Lflyme/R$dimen;->mz_preference_icon_height_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_icon_height_normal:I

    sget v0, Lflyme/R$dimen;->mz_preference_icon_margin_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_icon_margin_horizontal:I

    sget v0, Lflyme/R$dimen;->mz_preference_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_preference_icon_width_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_icon_width_normal:I

    sget v0, Lflyme/R$dimen;->mz_preference_item_padding_inner:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_item_padding_inner:I

    sget v0, Lflyme/R$dimen;->mz_preference_item_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_item_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_item_padding_side:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_item_padding_side:I

    sget v0, Lflyme/R$dimen;->mz_preference_list_more_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_list_more_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_preference_list_more_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_list_more_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_list_popup_item_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_list_popup_item_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_preference_list_popup_item_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_list_popup_item_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_list_popup_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_list_popup_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_margin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_margin:I

    sget v0, Lflyme/R$dimen;->mz_preference_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_min_height:I

    sget v0, Lflyme/R$dimen;->mz_preference_padding_no_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_padding_no_icon:I

    sget v0, Lflyme/R$dimen;->mz_preference_padding_with_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_padding_with_icon:I

    sget v0, Lflyme/R$dimen;->mz_preference_right_arrow_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_right_arrow_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_seek_bar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_seek_bar_width:I

    sget v0, Lflyme/R$dimen;->mz_preference_seekbar_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_seekbar_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_preference_seekbar_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_seekbar_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_switch_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_switch_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_preference_title_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_title_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_preference_widget_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preference_widget_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_preferencefragment_category_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preferencefragment_category_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_preferencefragment_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_preferencefragment_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_progress_dialog_ProgressBar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_progress_dialog_ProgressBar_width:I

    sget v0, Lflyme/R$dimen;->mz_progress_dialog_message_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_progress_dialog_message_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_progress_dialog_padding_no_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_progress_dialog_padding_no_message:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_animheight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_animheight:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_holdheight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_holdheight:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_maxheight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_maxheight:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_minheight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_minheight:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_overscrollheight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_overscrollheight:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_paintoffset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_paintoffset:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_radius:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_ringwidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_ringwidth:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_textmargintop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_textmargintop:I

    sget v0, Lflyme/R$dimen;->mz_pullRefresh_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_pullRefresh_textsize:I

    sget v0, Lflyme/R$dimen;->mz_recipient_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recipient_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_recipient_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recipient_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_recommend_grid_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_grid_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_recommend_grid_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_grid_margin_right:I

    sget v0, Lflyme/R$dimen;->mz_recommend_grid_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_grid_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_recommend_grid_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_grid_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_recommend_window_on_recommend_port_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_window_on_recommend_port_max_height:I

    sget v0, Lflyme/R$dimen;->mz_recommend_window_port_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_recommend_window_port_max_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_auto_scroll_response_range:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_auto_scroll_response_range:I

    sget v0, Lflyme/R$dimen;->mz_resolve_checkbox_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_checkbox_text_size:I

    sget v0, Lflyme/R$dimen;->mz_resolve_content_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_content_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_bottom:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_margin_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_checkbox_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_columns:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_columns:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_columns_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_columns_small:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_icon_and_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_icon_and_text:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_rows:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_gap_between_rows:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_right:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_text_size:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_item_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_item_width:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_land_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_land_max_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_port_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_port_max_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_right:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_top:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_top_without_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_top_without_title:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_width:I

    sget v0, Lflyme/R$dimen;->mz_resolve_grid_width_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_grid_width_large:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_back_button_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_back_button_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_back_layout_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_back_layout_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_divider_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_divider_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_divider_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_divider_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_item_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_item_icon_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_item_icon_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_item_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_item_icon_width:I

    sget v0, Lflyme/R$dimen;->mz_resolve_list_item_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_list_item_text_size:I

    sget v0, Lflyme/R$dimen;->mz_resolve_title_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_title_min_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_window_land_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_window_land_max_height:I

    sget v0, Lflyme/R$dimen;->mz_resolve_window_port_max_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolve_window_port_max_height:I

    sget v0, Lflyme/R$dimen;->mz_resolver_icon_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolver_icon_size:I

    sget v0, Lflyme/R$dimen;->mz_resolver_third_icon_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_resolver_third_icon_size:I

    sget v0, Lflyme/R$dimen;->mz_right_checkbox_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_right_checkbox_width:I

    sget v0, Lflyme/R$dimen;->mz_selection_button_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_selection_button_text_size:I

    sget v0, Lflyme/R$dimen;->mz_slidingmenu_menu_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_slidingmenu_menu_width:I

    sget v0, Lflyme/R$dimen;->mz_split_action_bar_cell_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_split_action_bar_cell_width:I

    sget v0, Lflyme/R$dimen;->mz_split_action_bar_default_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_split_action_bar_default_height:I

    sget v0, Lflyme/R$dimen;->mz_split_action_bar_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_split_action_bar_padding:I

    sget v0, Lflyme/R$dimen;->mz_split_action_bar_padding_for_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_split_action_bar_padding_for_4:I

    sget v0, Lflyme/R$dimen;->mz_split_action_item_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_split_action_item_padding:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_content_marging_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_content_marging_right:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_diameter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_diameter:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_diameter_control:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_diameter_control:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_margin_top_control:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_margin_top_control:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_left:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right_control:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right_control:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_right_headsup:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_marging_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_width:I

    sget v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_width_control:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_circle_progressbar_width_control:I

    sget v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_left:I

    sget v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_left_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_left_headsup:I

    sget v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_large_icon_padding_right:I

    sget v0, Lflyme/R$dimen;->mz_template_base_line1_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_line1_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_line3_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_line3_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_marging_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_marging_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_height:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_height_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_height_headsup:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_line1_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_line1_height:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_line1_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_line1_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_line1_margin_bottom_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_line1_margin_bottom_headsup:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_padding_bottom:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_template_base_notification_padding_top_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_notification_padding_top_headsup:I

    sget v0, Lflyme/R$dimen;->mz_template_base_progressbar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_progressbar_height:I

    sget v0, Lflyme/R$dimen;->mz_template_base_progressbar_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_base_progressbar_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_template_big_notification_min_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_notification_min_height:I

    sget v0, Lflyme/R$dimen;->mz_template_big_picture_margin_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_picture_margin_end:I

    sget v0, Lflyme/R$dimen;->mz_template_big_picture_padding_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_picture_padding_start:I

    sget v0, Lflyme/R$dimen;->mz_template_big_picture_pic_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_picture_pic_margin_bottom:I

    sget v0, Lflyme/R$dimen;->mz_template_big_picture_pic_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_picture_pic_margin_top:I

    sget v0, Lflyme/R$dimen;->mz_template_big_text_margin_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_big_text_margin_end:I

    sget v0, Lflyme/R$dimen;->mz_template_inbox_margin_end:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_template_inbox_margin_end:I

    sget v0, Lflyme/R$dimen;->mz_text_size_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_large:I

    sget v0, Lflyme/R$dimen;->mz_text_size_little:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_little:I

    sget v0, Lflyme/R$dimen;->mz_text_size_medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_medium:I

    sget v0, Lflyme/R$dimen;->mz_text_size_mini:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_mini:I

    sget v0, Lflyme/R$dimen;->mz_text_size_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_normal:I

    sget v0, Lflyme/R$dimen;->mz_text_size_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_text_size_small:I

    sget v0, Lflyme/R$dimen;->mz_toast_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_toast_padding:I

    sget v0, Lflyme/R$dimen;->mz_toast_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_toast_padding_top:I

    sget v0, Lflyme/R$dimen;->mz_toast_y_offset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->mz_toast_y_offset:I

    sget v0, Lflyme/R$dimen;->navigation_bar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->navigation_bar_width:I

    sget v0, Lflyme/R$dimen;->notification_large_icon_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_large_icon_height:I

    sget v0, Lflyme/R$dimen;->notification_large_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_large_icon_width:I

    sget v0, Lflyme/R$dimen;->notification_large_icon_width_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_large_icon_width_headsup:I

    sget v0, Lflyme/R$dimen;->notification_subtext_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_subtext_size:I

    sget v0, Lflyme/R$dimen;->notification_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_text_size:I

    sget v0, Lflyme/R$dimen;->notification_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->notification_title_text_size:I

    sget v0, Lflyme/R$dimen;->option_popup_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_height:I

    sget v0, Lflyme/R$dimen;->option_popup_item_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_item_padding:I

    sget v0, Lflyme/R$dimen;->option_popup_item_width_max:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_item_width_max:I

    sget v0, Lflyme/R$dimen;->option_popup_item_width_min:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_item_width_min:I

    sget v0, Lflyme/R$dimen;->option_popup_navigation_menu_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_navigation_menu_width:I

    sget v0, Lflyme/R$dimen;->option_popup_navigation_next_offset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_navigation_next_offset:I

    sget v0, Lflyme/R$dimen;->option_popup_navigation_prev_offset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_navigation_prev_offset:I

    sget v0, Lflyme/R$dimen;->option_popup_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->option_popup_text_size:I

    sget v0, Lflyme/R$dimen;->preference_child_padding_side:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_child_padding_side:I

    sget v0, Lflyme/R$dimen;->preference_fragment_padding_side:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_fragment_padding_side:I

    sget v0, Lflyme/R$dimen;->preference_item_padding_inner:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_item_padding_inner:I

    sget v0, Lflyme/R$dimen;->preference_item_padding_side:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_item_padding_side:I

    sget v0, Lflyme/R$dimen;->preference_screen_header_padding_side:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_screen_header_padding_side:I

    sget v0, Lflyme/R$dimen;->preference_widget_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->preference_widget_width:I

    sget v0, Lflyme/R$dimen;->push_dialog_button_panel_maringtop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_button_panel_maringtop:I

    sget v0, Lflyme/R$dimen;->push_dialog_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_height:I

    sget v0, Lflyme/R$dimen;->push_dialog_icon_panel_padding_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_icon_panel_padding_left:I

    sget v0, Lflyme/R$dimen;->push_dialog_icon_panel_padding_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_icon_panel_padding_top:I

    sget v0, Lflyme/R$dimen;->push_dialog_icon_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_icon_width:I

    sget v0, Lflyme/R$dimen;->push_dialog_message_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_message_textsize:I

    sget v0, Lflyme/R$dimen;->push_dialog_title_panel_paddingtop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_title_panel_paddingtop:I

    sget v0, Lflyme/R$dimen;->push_dialog_title_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->push_dialog_title_textsize:I

    sget v0, Lflyme/R$dimen;->recent_invalid_offset_to_edge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->recent_invalid_offset_to_edge:I

    sget v0, Lflyme/R$dimen;->static_hint_to_edit_padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->static_hint_to_edit_padding:I

    sget v0, Lflyme/R$dimen;->status_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->status_bar_height:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_height:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_margin_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_margin_bottom:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_margin_left:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_margin_right:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_margin_top:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_marginleft:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_marginleft:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_marginright:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_marginright:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_margintop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_margintop:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_padding_bottom:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_password_edit_textsize:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_tip2_margintop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_tip2_margintop:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_tip2_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_tip2_text_size:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_translate_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_translate_y:I

    sget v0, Lflyme/R$dimen;->system_lock_digit_view_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_digit_view_width:I

    sget v0, Lflyme/R$dimen;->system_lock_extend_touch_range:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_extend_touch_range:I

    sget v0, Lflyme/R$dimen;->system_lock_input_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_input_textsize:I

    sget v0, Lflyme/R$dimen;->system_lock_return_btn_margin_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_return_btn_margin_left:I

    sget v0, Lflyme/R$dimen;->system_lock_return_btn_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_return_btn_margin_top:I

    sget v0, Lflyme/R$dimen;->system_lock_text_button_margin_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_text_button_margin_right:I

    sget v0, Lflyme/R$dimen;->system_lock_textpad_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_textpad_height:I

    sget v0, Lflyme/R$dimen;->system_lock_textpad_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_textpad_margin_top:I

    sget v0, Lflyme/R$dimen;->system_lock_tips_textsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_tips_textsize:I

    sget v0, Lflyme/R$dimen;->system_lock_top_display_group_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_top_display_group_height:I

    sget v0, Lflyme/R$dimen;->system_lock_top_display_group_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_top_display_group_margin_top:I

    sget v0, Lflyme/R$dimen;->system_lock_view_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->system_lock_view_height:I

    sget v0, Lflyme/R$dimen;->voice_btn_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_btn_padding_bottom:I

    sget v0, Lflyme/R$dimen;->voice_btn_padding_bottom_ext:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_btn_padding_bottom_ext:I

    sget v0, Lflyme/R$dimen;->voice_record_time_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_record_time_size:I

    sget v0, Lflyme/R$dimen;->voice_text_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_text_padding_bottom:I

    sget v0, Lflyme/R$dimen;->voice_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_text_size:I

    sget v0, Lflyme/R$dimen;->voice_time_padding_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->voice_time_padding_bottom:I

    sget v0, Lflyme/R$dimen;->volume_icon_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_icon_margin_top:I

    sget v0, Lflyme/R$dimen;->volume_panel_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_height:I

    sget v0, Lflyme/R$dimen;->volume_panel_seekbar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_seekbar_height:I

    sget v0, Lflyme/R$dimen;->volume_panel_seekbar_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_seekbar_margin_top:I

    sget v0, Lflyme/R$dimen;->volume_panel_seekbar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_seekbar_width:I

    sget v0, Lflyme/R$dimen;->volume_panel_top_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_top_y:I

    sget v0, Lflyme/R$dimen;->volume_panel_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->volume_panel_width:I

    sget v0, Lflyme/R$dimen;->zoom_seekbar_bg_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->zoom_seekbar_bg_height:I

    sget v0, Lflyme/R$dimen;->zoom_seekbar_bg_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->zoom_seekbar_bg_width:I

    sget v0, Lflyme/R$dimen;->zoom_seekbar_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->zoom_seekbar_width:I

    sget v0, Lflyme/R$dimen;->zoom_seekbar_width_land:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$dimen;->zoom_seekbar_width_land:I

    sget v0, Lflyme/R$drawable;->access_application_edit_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->access_application_edit_text:I

    sget v0, Lflyme/R$drawable;->access_application_textfield_activated_mtrl_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->access_application_textfield_activated_mtrl_alpha:I

    sget v0, Lflyme/R$drawable;->access_application_textfield_default_mtrl_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->access_application_textfield_default_mtrl_alpha:I

    sget v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress:I

    sget v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress_background:I

    sget v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress_foreground:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->android_upgrading_silence_mode_progress_foreground:I

    sget v0, Lflyme/R$drawable;->audio_btn_cancel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->audio_btn_cancel:I

    sget v0, Lflyme/R$drawable;->audio_btn_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->audio_btn_normal:I

    sget v0, Lflyme/R$drawable;->audio_btn_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->audio_btn_press:I

    sget v0, Lflyme/R$drawable;->bg_magnifier:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->bg_magnifier:I

    sget v0, Lflyme/R$drawable;->bg_magnifier_night:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->bg_magnifier_night:I

    sget v0, Lflyme/R$drawable;->btn_check:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_check:I

    sget v0, Lflyme/R$drawable;->btn_num_prompt_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_num_prompt_normal:I

    sget v0, Lflyme/R$drawable;->btn_num_prompt_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_num_prompt_press:I

    sget v0, Lflyme/R$drawable;->btn_pin_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_pin_delete:I

    sget v0, Lflyme/R$drawable;->btn_pin_delete_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_pin_delete_light:I

    sget v0, Lflyme/R$drawable;->btn_pin_delete_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_pin_delete_pressed:I

    sget v0, Lflyme/R$drawable;->btn_pin_delete_pressed_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->btn_pin_delete_pressed_light:I

    sget v0, Lflyme/R$drawable;->calendar_mask:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->calendar_mask:I

    sget v0, Lflyme/R$drawable;->cloud_notice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->cloud_notice:I

    sget v0, Lflyme/R$drawable;->cloud_notice_m:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->cloud_notice_m:I

    sget v0, Lflyme/R$drawable;->default_lock_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->default_lock_wallpaper:I

    sget v0, Lflyme/R$drawable;->default_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->default_wallpaper:I

    sget v0, Lflyme/R$drawable;->default_wallpaper_thumb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->default_wallpaper_thumb:I

    sget v0, Lflyme/R$drawable;->do_not_disturb_notification_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->do_not_disturb_notification_icon:I

    sget v0, Lflyme/R$drawable;->do_not_disturb_status_bar_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->do_not_disturb_status_bar_icon:I

    sget v0, Lflyme/R$drawable;->emergency_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->emergency_background:I

    sget v0, Lflyme/R$drawable;->globalaction_btn_green_bsnone_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_btn_green_bsnone_normal:I

    sget v0, Lflyme/R$drawable;->globalaction_btn_green_bsnone_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_btn_green_bsnone_pressed:I

    sget v0, Lflyme/R$drawable;->globalaction_btn_orange_bsnone_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_btn_orange_bsnone_normal:I

    sget v0, Lflyme/R$drawable;->globalaction_btn_orange_bsnone_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_btn_orange_bsnone_pressed:I

    sget v0, Lflyme/R$drawable;->globalaction_close_close_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_close_close_press:I

    sget v0, Lflyme/R$drawable;->globalaction_close_reboot_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_close_reboot_press:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_airplane:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_airplane:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_airplane_other:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_airplane_other:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_vibrator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_vibrator:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_vibrator_other:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_vibrator_other:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_volume:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_volume:I

    sget v0, Lflyme/R$drawable;->globalaction_colse_volume_other:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_colse_volume_other:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_airplane_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_airplane_off:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_airplane_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_airplane_on:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_concuss_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_concuss_off:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_concuss_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_concuss_on:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_light_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_light_off:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_light_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_light_on:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_popup_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_popup_divider:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_sound_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_sound_off:I

    sget v0, Lflyme/R$drawable;->globalaction_ic_sound_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_ic_sound_on:I

    sget v0, Lflyme/R$drawable;->globalaction_lock_power_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->globalaction_lock_power_background:I

    sget v0, Lflyme/R$drawable;->ic_call_popup_volume_on_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_call_popup_volume_on_horizontal:I

    sget v0, Lflyme/R$drawable;->ic_flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_flyme:I

    sget v0, Lflyme/R$drawable;->ic_flyme_upgrading:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_flyme_upgrading:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_0:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_1:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_2:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_3:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_4:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_5:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_6:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_7:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_7:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_8:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_8:I

    sget v0, Lflyme/R$drawable;->ic_launcher_calendar_9:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_launcher_calendar_9:I

    sget v0, Lflyme/R$drawable;->ic_menu_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_menu_delete:I

    sget v0, Lflyme/R$drawable;->ic_menu_share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_menu_share:I

    sget v0, Lflyme/R$drawable;->ic_music_popup_volume_on_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_music_popup_volume_on_horizontal:I

    sget v0, Lflyme/R$drawable;->ic_password_fill:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_password_fill:I

    sget v0, Lflyme/R$drawable;->ic_password_fill_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_password_fill_light:I

    sget v0, Lflyme/R$drawable;->ic_password_gap:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_password_gap:I

    sget v0, Lflyme/R$drawable;->ic_password_gap_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_password_gap_light:I

    sget v0, Lflyme/R$drawable;->ic_popup_volume_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_popup_volume_background:I

    sget v0, Lflyme/R$drawable;->ic_popup_volume_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_popup_volume_on:I

    sget v0, Lflyme/R$drawable;->ic_popup_volume_on_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_popup_volume_on_horizontal:I

    sget v0, Lflyme/R$drawable;->ic_popup_volume_selected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_popup_volume_selected:I

    sget v0, Lflyme/R$drawable;->ic_popup_volume_unselected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_popup_volume_unselected:I

    sget v0, Lflyme/R$drawable;->ic_print:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_print:I

    sget v0, Lflyme/R$drawable;->ic_ring_popup_volume_on_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_ring_popup_volume_on_horizontal:I

    sget v0, Lflyme/R$drawable;->ic_settings_language_notification_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->ic_settings_language_notification_icon:I

    sget v0, Lflyme/R$drawable;->input_frame:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->input_frame:I

    sget v0, Lflyme/R$drawable;->input_method_cover_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->input_method_cover_background:I

    sget v0, Lflyme/R$drawable;->list_divider_holo_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->list_divider_holo_dark:I

    sget v0, Lflyme/R$drawable;->list_divider_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->list_divider_notification:I

    sget v0, Lflyme/R$drawable;->livewallpaper_map_thumbnail:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->livewallpaper_map_thumbnail:I

    sget v0, Lflyme/R$drawable;->lock_digit_0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_0:I

    sget v0, Lflyme/R$drawable;->lock_digit_0_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_0_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_1:I

    sget v0, Lflyme/R$drawable;->lock_digit_1_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_1_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_2:I

    sget v0, Lflyme/R$drawable;->lock_digit_2_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_2_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_3:I

    sget v0, Lflyme/R$drawable;->lock_digit_3_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_3_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_4:I

    sget v0, Lflyme/R$drawable;->lock_digit_4_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_4_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_5:I

    sget v0, Lflyme/R$drawable;->lock_digit_5_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_5_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_6:I

    sget v0, Lflyme/R$drawable;->lock_digit_6_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_6_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_7:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_7:I

    sget v0, Lflyme/R$drawable;->lock_digit_7_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_7_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_8:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_8:I

    sget v0, Lflyme/R$drawable;->lock_digit_8_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_8_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_9:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_9:I

    sget v0, Lflyme/R$drawable;->lock_digit_9_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_9_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background:I

    sget v0, Lflyme/R$drawable;->lock_digit_background_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_background_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background_normal:I

    sget v0, Lflyme/R$drawable;->lock_digit_background_normal_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background_normal_light:I

    sget v0, Lflyme/R$drawable;->lock_digit_background_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background_pressed:I

    sget v0, Lflyme/R$drawable;->lock_digit_background_pressed_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_digit_background_pressed_light:I

    sget v0, Lflyme/R$drawable;->lock_password_btn_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_password_btn_delete:I

    sget v0, Lflyme/R$drawable;->lock_password_btn_delete_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->lock_password_btn_delete_light:I

    sget v0, Lflyme/R$drawable;->low_battery_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->low_battery_warning:I

    sget v0, Lflyme/R$drawable;->mc_list_category_contact_partition_header_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mc_list_category_contact_partition_header_background:I

    sget v0, Lflyme/R$drawable;->menu_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->menu_bg:I

    sget v0, Lflyme/R$drawable;->mutil_launch_app_mark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mutil_launch_app_mark:I

    sget v0, Lflyme/R$drawable;->mz_ab_transparent_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ab_transparent_light:I

    sget v0, Lflyme/R$drawable;->mz_abc_zoom_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_abc_zoom_background:I

    sget v0, Lflyme/R$drawable;->mz_action_bar_tab_indicator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_action_bar_tab_indicator:I

    sget v0, Lflyme/R$drawable;->mz_actionbar_progress_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_actionbar_progress_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_activated_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_activated_background:I

    sget v0, Lflyme/R$drawable;->mz_activity_picker_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_activity_picker_bg:I

    sget v0, Lflyme/R$drawable;->mz_alertdialog_buttom_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_alertdialog_buttom_background:I

    sget v0, Lflyme/R$drawable;->mz_alertdialog_buttonbar_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_alertdialog_buttonbar_background:I

    sget v0, Lflyme/R$drawable;->mz_arrow_next_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_arrow_next_right:I

    sget v0, Lflyme/R$drawable;->mz_arrow_next_right_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_arrow_next_right_disable:I

    sget v0, Lflyme/R$drawable;->mz_arrow_next_right_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_arrow_next_right_normal:I

    sget v0, Lflyme/R$drawable;->mz_arrow_next_right_normal_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_arrow_next_right_normal_light:I

    sget v0, Lflyme/R$drawable;->mz_arrow_next_right_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_arrow_next_right_warning:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_00:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_00:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_01:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_01:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_02:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_02:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_03:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_03:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_04:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_04:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_05:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_05:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_06:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_06:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_07:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_07:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_08:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_08:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_09:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_09:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_10:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_10:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_11:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_11:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_12:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_13:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_13:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_14:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_14:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_15:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_15:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_16:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_16:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_17:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_17:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_18:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_18:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_19:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_19:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_20:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_20:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_21:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_21:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_22:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_22:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_23:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_23:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_24:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_24:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_25:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_25:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_26:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_26:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_27:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_27:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_28:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_28:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_29:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_29:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_30:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_30:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_31:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_31:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_32:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_32:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_33:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_33:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_34:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_34:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_35:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_35:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_36:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_36:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_37:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_37:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_38:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_38:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_39:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_39:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_40:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_40:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_41:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_41:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_42:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_42:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_43:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_43:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_44:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_44:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_45:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_45:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_46:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_47:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_47:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_48:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_48:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_49:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_49:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_50:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_50:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_51:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_51:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_52:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_52:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_53:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_53:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_54:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_54:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_55:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_55:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_56:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_56:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_57:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_57:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_58:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_58:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_59:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_59:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_60:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_60:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_61:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_61:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_62:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_62:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_63:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_63:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_64:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_64:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_65:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_65:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_66:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_66:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_67:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_67:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_68:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_68:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_69:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_69:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_70:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_70:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_71:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_71:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_72:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_72:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_73:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_73:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_74:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_74:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_75:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_75:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_76:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_76:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_77:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_77:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_78:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_78:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_79:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_79:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_80:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_80:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_81:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_81:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_82:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_82:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_83:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_83:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_84:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_84:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_85:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_85:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_86:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_86:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_87:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_87:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_88:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_88:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_89:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_89:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_90:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_90:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_91:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_91:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_92:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_92:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_93:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_93:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_94:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_94:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_95:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_95:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_96:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_96:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_97:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_97:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_98:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_98:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_99:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_99:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_00:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_00:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_01:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_01:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_02:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_02:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_03:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_03:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_04:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_04:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_05:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_05:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_06:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_06:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_07:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_07:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_08:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_08:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_09:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_09:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_10:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_10:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_11:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_11:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_12:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_13:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_13:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_14:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_14:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_15:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_15:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_16:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_16:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_17:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_17:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_18:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_18:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_19:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_19:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_20:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_20:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_21:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_21:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_22:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_22:I

    invoke-static {p0}, Lflyme/R;->onResourcesLoaded3(I)V

    return-void
.end method

.method private static onResourcesLoaded3(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_23:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_23:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_24:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_24:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_25:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_25:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_26:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_26:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_27:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_27:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_28:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_28:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_29:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_29:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_30:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_30:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_31:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_31:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_32:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_32:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_33:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_33:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_34:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_34:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_35:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_35:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_36:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_36:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_37:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_37:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_38:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_38:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_39:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_39:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_40:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_40:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_41:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_41:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_42:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_42:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_43:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_43:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_44:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_44:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_45:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_45:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_46:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_47:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_47:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_48:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_48:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_49:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_49:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_50:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_50:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_51:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_51:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_52:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_52:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_53:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_53:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_54:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_54:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_55:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_55:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_56:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_56:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_57:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_57:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_58:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_58:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_59:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_59:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_60:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_60:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_61:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_61:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_62:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_62:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_63:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_63:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_64:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_64:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_65:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_65:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_66:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_66:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_67:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_67:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_68:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_68:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_69:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_69:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_70:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_70:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_71:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_71:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_72:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_72:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_73:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_73:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_74:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_74:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_75:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_75:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_76:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_76:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_77:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_77:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_78:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_78:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_79:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_79:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_80:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_80:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_81:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_81:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_82:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_82:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_83:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_83:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_84:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_84:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_85:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_85:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_86:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_86:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_87:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_87:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_88:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_88:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_89:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_89:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_90:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_90:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_91:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_91:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_92:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_92:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_93:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_93:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_94:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_94:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_95:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_95:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_96:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_96:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_97:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_97:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_98:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_98:I

    sget v0, Lflyme/R$drawable;->mz_avastar_person_thumb_99:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_avastar_person_thumb_99:I

    sget v0, Lflyme/R$drawable;->mz_background_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_background_dark:I

    sget v0, Lflyme/R$drawable;->mz_background_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_background_light:I

    sget v0, Lflyme/R$drawable;->mz_bg_contact_edit_picture_big_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_bg_contact_edit_picture_big_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts_enter:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts_enter_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts_enter_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts_enter_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts_enter_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_accounts_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_accounts_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_background_transition_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_background_transition_light:I

    sget v0, Lflyme/R$drawable;->mz_btn_big_star:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_big_star:I

    sget v0, Lflyme/R$drawable;->mz_btn_big_star_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_big_star_on:I

    sget v0, Lflyme/R$drawable;->mz_btn_big_star_secondary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_big_star_secondary:I

    sget v0, Lflyme/R$drawable;->mz_btn_borderless:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_borderless:I

    sget v0, Lflyme/R$drawable;->mz_btn_borderless_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_borderless_background:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_circle_off_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_circle_off_disable:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_circle_off_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_circle_off_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow_circle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow_circle:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_disable_arrow_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow_circle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow_circle:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_off_normal_arrow_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_off:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_disable:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_off_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_on:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_color_limegreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_color_limegreen:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_disable:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_disable_color_limegreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_button_square_on_disable_color_limegreen:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_buttonless_multiple:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_buttonless_multiple:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_buttonless_off_single:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_buttonless_off_single:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_buttonless_on_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_buttonless_on_disable:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_buttonless_on_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_buttonless_on_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_multiple:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_multiple:I

    sget v0, Lflyme/R$drawable;->mz_btn_check_single:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_check_single:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_divider:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_left:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_left_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_left_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_left_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_left_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_middle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_middle:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_middle_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_middle_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_middle_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_middle_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_next_page:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_next_page:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_prev_page:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_prev_page:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_right:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_right_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_right_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_copy_right_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_copy_right_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_corner_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_corner_disable:I

    sget v0, Lflyme/R$drawable;->mz_btn_corner_disable_stroke:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_corner_disable_stroke:I

    sget v0, Lflyme/R$drawable;->mz_btn_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_default:I

    sget v0, Lflyme/R$drawable;->mz_btn_default_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_default_disabled:I

    sget v0, Lflyme/R$drawable;->mz_btn_default_mtrl_shape:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_default_mtrl_shape:I

    sget v0, Lflyme/R$drawable;->mz_btn_default_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_default_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_default_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_default_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_help:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_help:I

    sget v0, Lflyme/R$drawable;->mz_btn_help_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_help_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_help_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_help_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_add:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_add:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_add_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_add_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_add_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_add_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_attachment_delete_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_default:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_default_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_default_disabled:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_default_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_default_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_default_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_default_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_delete:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_delete_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_delete_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_list_delete_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_list_delete_pressed:I

    sget v0, Lflyme/R$drawable;->mz_btn_small_star:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_small_star:I

    sget v0, Lflyme/R$drawable;->mz_btn_small_star_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_small_star_on:I

    sget v0, Lflyme/R$drawable;->mz_btn_small_star_secondary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_small_star_secondary:I

    sget v0, Lflyme/R$drawable;->mz_btn_textfield_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_textfield_delete:I

    sget v0, Lflyme/R$drawable;->mz_btn_textfield_delete_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_textfield_delete_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_textfield_delete_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_textfield_delete_normal:I

    sget v0, Lflyme/R$drawable;->mz_btn_textfield_delete_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_textfield_delete_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_btn_textfield_delete_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_btn_textfield_delete_pressed:I

    sget v0, Lflyme/R$drawable;->mz_card_bg_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_bg_light:I

    sget v0, Lflyme/R$drawable;->mz_card_bg_light_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_bg_light_activated:I

    sget v0, Lflyme/R$drawable;->mz_card_bg_light_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_bg_light_normal:I

    sget v0, Lflyme/R$drawable;->mz_card_bg_light_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_bg_light_pressed:I

    sget v0, Lflyme/R$drawable;->mz_card_bottom_shade_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_bottom_shade_light:I

    sget v0, Lflyme/R$drawable;->mz_card_full_shade_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_full_shade_light:I

    sget v0, Lflyme/R$drawable;->mz_card_list_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_list_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_card_list_divider_shade_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_list_divider_shade_light:I

    sget v0, Lflyme/R$drawable;->mz_card_middle_shade_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_middle_shade_light:I

    sget v0, Lflyme/R$drawable;->mz_card_new_bg_light_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_new_bg_light_activated:I

    sget v0, Lflyme/R$drawable;->mz_card_new_bg_light_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_new_bg_light_pressed:I

    sget v0, Lflyme/R$drawable;->mz_card_new_list_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_new_list_divider:I

    sget v0, Lflyme/R$drawable;->mz_card_new_list_selector_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_new_list_selector_background:I

    sget v0, Lflyme/R$drawable;->mz_card_new_list_selector_background_transition:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_new_list_selector_background_transition:I

    sget v0, Lflyme/R$drawable;->mz_card_top_shade_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_card_top_shade_light:I

    sget v0, Lflyme/R$drawable;->mz_collect_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_collect_red:I

    sget v0, Lflyme/R$drawable;->mz_collect_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_collect_white:I

    sget v0, Lflyme/R$drawable;->mz_consumption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_consumption:I

    sget v0, Lflyme/R$drawable;->mz_contact_edit_picture_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_edit_picture_big:I

    sget v0, Lflyme/R$drawable;->mz_contact_edit_picture_big_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_edit_picture_big_normal:I

    sget v0, Lflyme/R$drawable;->mz_contact_edit_picture_big_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_edit_picture_big_pressed:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_call:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_pic_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_pic_big:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_pic_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_pic_small:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_box:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_box:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_call_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_call_pressed:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_cover:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_cover:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_default:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_pressed:I

    sget v0, Lflyme/R$drawable;->mz_contact_list_picture_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_list_picture_small:I

    sget v0, Lflyme/R$drawable;->mz_contact_picture_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_contact_picture_big:I

    sget v0, Lflyme/R$drawable;->mz_content_toast_bg_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_content_toast_bg_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_content_toast_bg_normal_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_content_toast_bg_normal_light:I

    sget v0, Lflyme/R$drawable;->mz_dialog_background_material:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_background_material:I

    sget v0, Lflyme/R$drawable;->mz_dialog_background_show_at_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_background_show_at_bottom:I

    sget v0, Lflyme/R$drawable;->mz_dialog_bottom_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_bottom_light:I

    sget v0, Lflyme/R$drawable;->mz_dialog_card_bg_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_card_bg_light:I

    sget v0, Lflyme/R$drawable;->mz_dialog_full_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_full_light:I

    sget v0, Lflyme/R$drawable;->mz_dialog_full_light_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_full_light_bg:I

    sget v0, Lflyme/R$drawable;->mz_dialog_middle_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_middle_light:I

    sget v0, Lflyme/R$drawable;->mz_dialog_top_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dialog_top_light:I

    sget v0, Lflyme/R$drawable;->mz_download:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_download:I

    sget v0, Lflyme/R$drawable;->mz_download_pause:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_download_pause:I

    sget v0, Lflyme/R$drawable;->mz_download_pause_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_download_pause_white:I

    sget v0, Lflyme/R$drawable;->mz_download_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_download_white:I

    sget v0, Lflyme/R$drawable;->mz_drawable_progress_indeterminate_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_drawable_progress_indeterminate_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_drawer_list_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_drawer_list_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_drawer_shadow_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_drawer_shadow_light:I

    sget v0, Lflyme/R$drawable;->mz_dropdown_ic_arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_dropdown_ic_arrow:I

    sget v0, Lflyme/R$drawable;->mz_edit_text_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_edit_text_background:I

    sget v0, Lflyme/R$drawable;->mz_edittext_new_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_edittext_new_error:I

    sget v0, Lflyme/R$drawable;->mz_edittext_new_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_edittext_new_normal:I

    sget v0, Lflyme/R$drawable;->mz_edittext_new_selected_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_edittext_new_selected_default:I

    sget v0, Lflyme/R$drawable;->mz_emo_angger:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_angger:I

    sget v0, Lflyme/R$drawable;->mz_emo_apathy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_apathy:I

    sget v0, Lflyme/R$drawable;->mz_emo_blush:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_blush:I

    sget v0, Lflyme/R$drawable;->mz_emo_cool:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_cool:I

    sget v0, Lflyme/R$drawable;->mz_emo_crying:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_crying:I

    sget v0, Lflyme/R$drawable;->mz_emo_eye_booger:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_eye_booger:I

    sget v0, Lflyme/R$drawable;->mz_emo_faint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_faint:I

    sget v0, Lflyme/R$drawable;->mz_emo_gosh:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_gosh:I

    sget v0, Lflyme/R$drawable;->mz_emo_injury:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_injury:I

    sget v0, Lflyme/R$drawable;->mz_emo_jiong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_jiong:I

    sget v0, Lflyme/R$drawable;->mz_emo_kissing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_kissing:I

    sget v0, Lflyme/R$drawable;->mz_emo_laughing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_laughing:I

    sget v0, Lflyme/R$drawable;->mz_emo_lovely:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_lovely:I

    sget v0, Lflyme/R$drawable;->mz_emo_money:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_money:I

    sget v0, Lflyme/R$drawable;->mz_emo_panel_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_panel_background:I

    sget v0, Lflyme/R$drawable;->mz_emo_pigs_head:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_pigs_head:I

    sget v0, Lflyme/R$drawable;->mz_emo_sad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_sad:I

    sget v0, Lflyme/R$drawable;->mz_emo_saw_logs:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_saw_logs:I

    sget v0, Lflyme/R$drawable;->mz_emo_smile:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_smile:I

    sget v0, Lflyme/R$drawable;->mz_emo_sorrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_sorrow:I

    sget v0, Lflyme/R$drawable;->mz_emo_stopper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_stopper:I

    sget v0, Lflyme/R$drawable;->mz_emo_surprised:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_surprised:I

    sget v0, Lflyme/R$drawable;->mz_emo_tongue_sticking_out:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_tongue_sticking_out:I

    sget v0, Lflyme/R$drawable;->mz_emo_undecided:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_undecided:I

    sget v0, Lflyme/R$drawable;->mz_emo_winking:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_emo_winking:I

    sget v0, Lflyme/R$drawable;->mz_fastscroll_thumb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_fastscroll_thumb:I

    sget v0, Lflyme/R$drawable;->mz_fastscroll_thumb_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_fastscroll_thumb_default:I

    sget v0, Lflyme/R$drawable;->mz_fastscroll_thumb_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_fastscroll_thumb_pressed:I

    sget v0, Lflyme/R$drawable;->mz_fastscroll_track_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_fastscroll_track_default:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_close:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_close:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_indicator_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_menu_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_menu_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_menu_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_menu_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_top:I

    sget v0, Lflyme/R$drawable;->mz_ic_ab_back_transparent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_ab_back_transparent:I

    sget v0, Lflyme/R$drawable;->mz_ic_accounts_flyme_logo_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_accounts_flyme_logo_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_accounts_flyme_logo_mini:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_accounts_flyme_logo_mini:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_chocolate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_chocolate:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_coral:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_coral:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_dodgerblue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_dodgerblue:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_firebrick:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_firebrick:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_limegreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_limegreen:I

    sget v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_tomato:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_actionbar_highlight_color_tomato:I

    sget v0, Lflyme/R$drawable;->mz_ic_content_toast_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_content_toast_warning:I

    sget v0, Lflyme/R$drawable;->mz_ic_document_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_document_view:I

    sget v0, Lflyme/R$drawable;->mz_ic_document_zip_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_document_zip_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_download_fail_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_download_fail_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_download_pause_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_download_pause_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_downloading_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_downloading_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_network_faild:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_network_faild:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_network_faild_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_network_faild_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_no_login:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_no_login:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_no_network:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_no_network:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_no_network_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_no_network_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_refresh:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_refresh:I

    sget v0, Lflyme/R$drawable;->mz_ic_empty_view_refresh_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_empty_view_refresh_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_filter_group_picture_admini:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_filter_group_picture_admini:I

    sget v0, Lflyme/R$drawable;->mz_ic_filter_group_picture_flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_filter_group_picture_flyme:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_account_flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_account_flyme:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_account_flyme_mini:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_account_flyme_mini:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_account_google:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_account_google:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_accounts_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_accounts_error:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_accounts_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_accounts_right:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_app_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_app_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_app_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_app_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_bin_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_bin_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_doc_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_doc_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_doc_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_doc_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_html_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_html_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_html_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_html_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_menu_sort:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_menu_sort:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more_borderless:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more_borderless:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more_borderless_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more_borderless_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more_borderless_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more_borderless_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more_down:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more_down:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_more_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_more_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_movie_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_movie_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_movie_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_movie_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_music_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_music_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_music_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_music_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_nas_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_nas_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_pdf_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_pdf_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_pdf_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_pdf_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_photo_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_photo_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_photo_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_photo_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_ppt_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_ppt_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_ppt_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_ppt_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_preference_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_preference_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_preference_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_preference_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_sdnofound_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_sdnofound_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_sdusing_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_sdusing_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_txt_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_txt_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_txt_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_txt_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_unknow_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_unknow_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_unknow_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_unknow_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_usb_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_usb_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_vcf_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_vcf_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_xls_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_xls_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_xls_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_xls_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_zip_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_zip_big:I

    sget v0, Lflyme/R$drawable;->mz_ic_list_zip_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_list_zip_small:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_about:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_about:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_account_balance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_account_balance:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_account_flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_account_flyme:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_add:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_add:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_app:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_attachment:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_attachment:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_buletooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_buletooth:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_calendar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_calendar:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_caution:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_caution:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_copy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_copy:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_delete:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_display:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_display:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_document:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_document:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_document_storeplate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_document_storeplate:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_document_usb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_document_usb:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_document_wlan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_document_wlan:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_done:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_done:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_download:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_download:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_export:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_export:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_filter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_filter:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_import:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_import:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_launcher:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_launcher:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_lock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_lock:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_lyric:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_lyric:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_md5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_md5:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_meizu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_meizu:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_move:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_move:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_music:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_music:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_nfc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_nfc:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_phone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_phone:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_power:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_power:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_refresh:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_refresh:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_sensor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_sensor:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_share:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_sharepoint_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_sharepoint_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_sharepoint_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_sharepoint_light:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_sim_erro:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_sim_erro:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_stranger:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_stranger:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_svip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_svip:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_time:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_time:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_usb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_usb:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_vip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_vip:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_vpn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_vpn:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_wlan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_wlan:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_wps:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_wps:I

    sget v0, Lflyme/R$drawable;->mz_ic_popup_zip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_popup_zip:I

    sget v0, Lflyme/R$drawable;->mz_ic_pull_hold_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_pull_hold_icon:I

    sget v0, Lflyme/R$drawable;->mz_ic_sb_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_sb_back:I

    sget v0, Lflyme/R$drawable;->mz_ic_sb_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_sb_more:I

    sget v0, Lflyme/R$drawable;->mz_ic_search_empty:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_search_empty:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_add_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_add_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_attachment:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_attachment:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_attachment_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_attachment_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_attachment_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_attachment_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_edit_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_edit_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_export:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_export:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_export_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_export_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_export_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_export_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_filter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_filter:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_filter_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_filter_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_filter_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_filter_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_filter_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_filter_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_filter_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_filter_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_forward:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_forward:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_forward_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_forward_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_forward_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_forward_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_forward_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_forward_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_forward_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_forward_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_import:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_import:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_import_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_import_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_import_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_import_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_new:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_new:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_new_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_new_disable:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_new_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_new_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_new_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_new_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_new_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_new_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_rename:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_rename:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_rename_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_rename_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_tab_rename_normal_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_tab_rename_normal_dark:I

    sget v0, Lflyme/R$drawable;->mz_ic_text_dots:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_text_dots:I

    sget v0, Lflyme/R$drawable;->mz_ic_topbar_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_topbar_more:I

    sget v0, Lflyme/R$drawable;->mz_ic_topbar_more_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_topbar_more_normal:I

    sget v0, Lflyme/R$drawable;->mz_ic_topbar_more_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_topbar_more_pressed:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_1:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_2:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_3:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_4:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_lock_signal_5:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_signal_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_signal_1:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_signal_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_signal_2:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_signal_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_signal_3:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_signal_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_signal_4:I

    sget v0, Lflyme/R$drawable;->mz_ic_wifi_signal_5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ic_wifi_signal_5:I

    sget v0, Lflyme/R$drawable;->mz_input_select_handle_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_input_select_handle_color_default:I

    sget v0, Lflyme/R$drawable;->mz_item_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_item_background:I

    sget v0, Lflyme/R$drawable;->mz_item_background_borderless:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_item_background_borderless:I

    sget v0, Lflyme/R$drawable;->mz_item_background_borderless_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_item_background_borderless_dark:I

    sget v0, Lflyme/R$drawable;->mz_item_background_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_item_background_dark:I

    sget v0, Lflyme/R$drawable;->mz_item_image_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_item_image_background:I

    sget v0, Lflyme/R$drawable;->mz_key_button_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_key_button_back:I

    sget v0, Lflyme/R$drawable;->mz_list_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_activated:I

    sget v0, Lflyme/R$drawable;->mz_list_category_1_right_triangle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_category_1_right_triangle:I

    sget v0, Lflyme/R$drawable;->mz_list_comment_right_pic_like_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_comment_right_pic_like_normal:I

    sget v0, Lflyme/R$drawable;->mz_list_comment_right_pic_like_selected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_comment_right_pic_like_selected:I

    sget v0, Lflyme/R$drawable;->mz_list_divider_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_divider_dark:I

    sget v0, Lflyme/R$drawable;->mz_list_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_list_focused_holo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_focused_holo:I

    sget v0, Lflyme/R$drawable;->mz_list_group_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_group_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_list_history_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_history_background:I

    sget v0, Lflyme/R$drawable;->mz_list_history_background_noshadow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_history_background_noshadow:I

    sget v0, Lflyme/R$drawable;->mz_list_history_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_history_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_list_item_bg_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_item_bg_light:I

    sget v0, Lflyme/R$drawable;->mz_list_item_bg_light_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_item_bg_light_activated:I

    sget v0, Lflyme/R$drawable;->mz_list_longpressed_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_longpressed_holo_light:I

    sget v0, Lflyme/R$drawable;->mz_list_new_item_bg_light_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_new_item_bg_light_activated:I

    sget v0, Lflyme/R$drawable;->mz_list_pressed_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_pressed_holo_light:I

    sget v0, Lflyme/R$drawable;->mz_list_section_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_section_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_dark:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_delete:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_filter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_filter:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_long_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_long_pressed:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_pressed:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_transition:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_transition:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_background_transition_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_background_transition_holo_light:I

    sget v0, Lflyme/R$drawable;->mz_list_selector_disabled_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_list_selector_disabled_holo_light:I

    sget v0, Lflyme/R$drawable;->mz_menuitem_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_menuitem_background:I

    sget v0, Lflyme/R$drawable;->mz_mtp_mode_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_mtp_mode_off:I

    sget v0, Lflyme/R$drawable;->mz_mtp_mode_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_mtp_mode_on:I

    sget v0, Lflyme/R$drawable;->mz_new_list_line:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_new_list_line:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_bg:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_bg_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_bg_pressed:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_corner_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_corner_color:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_corner_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_corner_disable:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_corner_normal_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_corner_normal_color:I

    sget v0, Lflyme/R$drawable;->mz_notification_actions_corner_pressed_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_actions_corner_pressed_color:I

    sget v0, Lflyme/R$drawable;->mz_notification_bg_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_bg_normal:I

    sget v0, Lflyme/R$drawable;->mz_notification_bg_normal_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_bg_normal_pressed:I

    sget v0, Lflyme/R$drawable;->mz_notification_bg_opaque:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_notification_bg_opaque:I

    sget v0, Lflyme/R$drawable;->mz_option_menu_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_option_menu_background:I

    sget v0, Lflyme/R$drawable;->mz_picker_box_selected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_picker_box_selected:I

    sget v0, Lflyme/R$drawable;->mz_popup_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_background:I

    sget v0, Lflyme/R$drawable;->mz_popup_balance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_balance:I

    sget v0, Lflyme/R$drawable;->mz_popup_bg_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_bg_light:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_full:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_full:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_full_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_full_pressed:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_left:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_left_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_left_pressed:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_middle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_middle:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_middle_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_middle_pressed:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_right:I

    sget v0, Lflyme/R$drawable;->mz_popup_btn_right_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_btn_right_pressed:I

    sget v0, Lflyme/R$drawable;->mz_popup_buttonbar_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_buttonbar_background:I

    sget v0, Lflyme/R$drawable;->mz_popup_buttonbar_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_buttonbar_divider:I

    sget v0, Lflyme/R$drawable;->mz_popup_divider_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_divider_light:I

    sget v0, Lflyme/R$drawable;->mz_popup_divider_line:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_divider_line:I

    sget v0, Lflyme/R$drawable;->mz_popup_fast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_fast:I

    sget v0, Lflyme/R$drawable;->mz_popup_icon_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_icon_pressed:I

    sget v0, Lflyme/R$drawable;->mz_popup_list_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_popup_list_divider:I

    sget v0, Lflyme/R$drawable;->mz_praise_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_praise_red:I

    sget v0, Lflyme/R$drawable;->mz_praise_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_praise_white:I

    sget v0, Lflyme/R$drawable;->mz_progress_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_bg:I

    sget v0, Lflyme/R$drawable;->mz_progress_bg_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_bg_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_big:I

    sget v0, Lflyme/R$drawable;->mz_progress_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_error:I

    sget v0, Lflyme/R$drawable;->mz_progress_error_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_error_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal_error:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal_error_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal_error_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal_stop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal_stop:I

    sget v0, Lflyme/R$drawable;->mz_progress_horizontal_stop_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_horizontal_stop_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_indeterminate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_indeterminate:I

    sget v0, Lflyme/R$drawable;->mz_progress_indeterminate_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_indeterminate_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_progress_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_large:I

    sget v0, Lflyme/R$drawable;->mz_progress_medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_medium:I

    sget v0, Lflyme/R$drawable;->mz_progress_primary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_primary:I

    sget v0, Lflyme/R$drawable;->mz_progress_primary_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_primary_notification:I

    sget v0, Lflyme/R$drawable;->mz_progress_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_small:I

    sget v0, Lflyme/R$drawable;->mz_progress_stop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_stop:I

    sget v0, Lflyme/R$drawable;->mz_progress_stop_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progress_stop_notification:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate1:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate10:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate10:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate11:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate11:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate12:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate13:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate13:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate14:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate14:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate15:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate15:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate2:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate3:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate4:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate5:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate6:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate7:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate7:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate8:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate8:I

    sget v0, Lflyme/R$drawable;->mz_progressbar_indeterminate9:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_progressbar_indeterminate9:I

    sget v0, Lflyme/R$drawable;->mz_ptp_mode_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ptp_mode_off:I

    sget v0, Lflyme/R$drawable;->mz_ptp_mode_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_ptp_mode_on:I

    sget v0, Lflyme/R$drawable;->mz_push_dialog_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_push_dialog_bg:I

    sget v0, Lflyme/R$drawable;->mz_recharge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_recharge:I

    sget v0, Lflyme/R$drawable;->mz_recipient_divider_email_2px:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_recipient_divider_email_2px:I

    sget v0, Lflyme/R$drawable;->mz_resolver_drag_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_resolver_drag_icon:I

    sget v0, Lflyme/R$drawable;->mz_resolver_ic_pengyouquan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_resolver_ic_pengyouquan:I

    sget v0, Lflyme/R$drawable;->mz_resolver_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_resolver_more:I

    sget v0, Lflyme/R$drawable;->mz_resolver_popup_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_resolver_popup_bg:I

    sget v0, Lflyme/R$drawable;->mz_scrollbar_handle_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrollbar_handle_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_scrollbar_handle_vertical:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrollbar_handle_vertical:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_disable:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_normal:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_pressed:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_selector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_selector:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_selector_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_selector_dark:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_selector_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_selector_white:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_white_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_white_disable:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_white_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_white_normal:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_control_white_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_control_white_pressed:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_dark:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_disable:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_disable_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_disable_dark:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_normal:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_white:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_white_disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_white_disable:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_primary_white_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_primary_white_normal:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_progress_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_progress_horizontal:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_progress_horizontal_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_progress_horizontal_white:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_track:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_track:I

    sget v0, Lflyme/R$drawable;->mz_scrubber_track_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_scrubber_track_white:I

    sget v0, Lflyme/R$drawable;->mz_search_text_cursor_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_search_text_cursor_white:I

    sget v0, Lflyme/R$drawable;->mz_search_view_textfield_hover_color_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_search_view_textfield_hover_color_white:I

    sget v0, Lflyme/R$drawable;->mz_search_view_textfield_hover_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_search_view_textfield_hover_default:I

    sget v0, Lflyme/R$drawable;->mz_slide_divider_8px:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_slide_divider_8px:I

    sget v0, Lflyme/R$drawable;->mz_slidingmenu_item_activated_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_slidingmenu_item_activated_bg:I

    sget v0, Lflyme/R$drawable;->mz_smartbar_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_smartbar_background:I

    sget v0, Lflyme/R$drawable;->mz_smartbar_background_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_smartbar_background_dark:I

    sget v0, Lflyme/R$drawable;->mz_smartbar_background_grey:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_smartbar_background_grey:I

    sget v0, Lflyme/R$drawable;->mz_spinner_background_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_background_light:I

    sget v0, Lflyme/R$drawable;->mz_spinner_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_big:I

    sget v0, Lflyme/R$drawable;->mz_spinner_large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_large:I

    sget v0, Lflyme/R$drawable;->mz_spinner_line_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_line_background:I

    sget v0, Lflyme/R$drawable;->mz_spinner_line_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_line_normal:I

    sget v0, Lflyme/R$drawable;->mz_spinner_line_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_line_pressed:I

    sget v0, Lflyme/R$drawable;->mz_spinner_medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_medium:I

    sget v0, Lflyme/R$drawable;->mz_spinner_normal_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_normal_light:I

    sget v0, Lflyme/R$drawable;->mz_spinner_pressed_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_pressed_light:I

    sget v0, Lflyme/R$drawable;->mz_spinner_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_spinner_small:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_alarm_miss:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_alarm_miss:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_call_mute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_call_mute:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_car_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_car_mode:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_copy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_copy:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_disk_full:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_disk_full:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_email_password:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_email_password:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_email_sending:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_email_sending:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_event:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_event:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_event_repeat:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_event_repeat:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_missed_call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_missed_call:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_record:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_record:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_sim_toolkit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_sim_toolkit:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_sms:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_sms_failed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_sms_failed:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_sync:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_sync:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_sync_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_sync_error:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_voicemail:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_voicemail:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_wifi_display:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_wifi_display:I

    sget v0, Lflyme/R$drawable;->mz_stat_notify_wifi_in_range:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_notify_wifi_in_range:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_backup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_backup:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_restore:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_restore:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_succeed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_360cloud_succeed:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_adb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_adb:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_chronograph:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_chronograph:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_data_usb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_data_usb:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_desktop_backup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_desktop_backup:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_desktop_bin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_desktop_bin:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_desktop_restore:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_desktop_restore:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_document_wlan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_document_wlan:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim0:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim1:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim2:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim3:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim4:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim5:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim6:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim7:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim7:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim8:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim8:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_anim9:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_anim9:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_download_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_download_error:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_downloaded:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_downloaded:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_downloading:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_downloading:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_downloading_pause:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_downloading_pause:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_export:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_export:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_external_storage:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_external_storage:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_gps_acquire:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_gps_acquire:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_gps_acquiring:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_gps_acquiring:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_gps_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_gps_on:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_headset:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_headset:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_import:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_import:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_installed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_installed:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_bluetooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_bluetooth:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_en:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_en:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_ping:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_ping:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_ru:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_ru:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_wu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_keyboard_wu:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_move:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_move:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_music_play:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_music_play:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_music_play_stop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_music_play_stop:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_nfc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_nfc:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data_down:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data_down:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data_up:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_nfc_data_up:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_notify_service:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_notify_service:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_bluetooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_bluetooth:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_forward:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_forward:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_on_hold:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_on_hold:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_restrict:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_restrict:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_web:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_phone_call_web:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_pppoe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_pppoe:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_receiving_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_receiving_mode:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_secure:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_secure:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_smartbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_smartbar:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_spdif:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_spdif:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_speakerphone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_speakerphone:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_tether_bluetooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_tether_bluetooth:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_tether_general:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_tether_general:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_tether_usb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_tether_usb:I

    invoke-static {p0}, Lflyme/R;->onResourcesLoaded4(I)V

    return-void
.end method

.method private static onResourcesLoaded4(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    sget v0, Lflyme/R$drawable;->mz_stat_sys_tether_wifi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_tether_wifi:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_throttled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_throttled:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_timer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_timer:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_traffic_warn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_traffic_warn:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim0:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim1:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim2:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim3:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim4:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim5:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim6:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim7:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim7:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim8:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim8:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim9:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_upload_anim9:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_uploaded:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_uploaded:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_uploading:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_uploading:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_usbaudio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_usbaudio:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_voicemsg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_voicemsg:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_voicemsg_new:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_voicemsg_new:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_vpn_connected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_vpn_connected:I

    sget v0, Lflyme/R$drawable;->mz_stat_sys_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_stat_sys_warning:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_adb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_adb:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_bt_share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_bt_share:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_contact_picture_call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_contact_picture_call:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_data_usb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_data_usb:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_document_wlan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_document_wlan:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_drive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_drive:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_export:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_export:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_import:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_import:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_keyboard:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_keyboard:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_disk_full:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_disk_full:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_missed_call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_missed_call:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_sdcard_damage:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_sdcard_damage:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_service:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_service:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_sms:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_sms_failed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_sms_failed:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_sync:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_sync:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_sync_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_sync_error:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_voicemail:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_voicemail:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_wifi_display:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_wifi_display:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_notify_wifi_in_range:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_notify_wifi_in_range:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_phone_call_forward:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_phone_call_forward:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_phone_call_restrict:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_phone_call_restrict:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_pppoe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_pppoe:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_printscreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_printscreen:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_receiving_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_receiving_mode:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_secure:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_secure:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_spdif:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_spdif:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_tether_general:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_tether_general:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_third_app_ongoing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_third_app_ongoing:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_traffic_warn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_traffic_warn:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_usbaudio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_usbaudio:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_voicemsg_new:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_voicemsg_new:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_vpn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_vpn:I

    sget v0, Lflyme/R$drawable;->mz_status_ic_warnning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_status_ic_warnning:I

    sget v0, Lflyme/R$drawable;->mz_switch_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_bg:I

    sget v0, Lflyme/R$drawable;->mz_switch_bg_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_bg_dark:I

    sget v0, Lflyme/R$drawable;->mz_switch_bg_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_bg_default:I

    sget v0, Lflyme/R$drawable;->mz_switch_bg_default_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_bg_default_dark:I

    sget v0, Lflyme/R$drawable;->mz_switch_inner:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_inner:I

    sget v0, Lflyme/R$drawable;->mz_switch_thumb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_thumb:I

    sget v0, Lflyme/R$drawable;->mz_switch_thumb_activated:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_thumb_activated:I

    sget v0, Lflyme/R$drawable;->mz_switch_thumb_activated_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_thumb_activated_disabled:I

    sget v0, Lflyme/R$drawable;->mz_switch_thumb_disabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_switch_thumb_disabled:I

    sget v0, Lflyme/R$drawable;->mz_sym_call_list_stranger:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_sym_call_list_stranger:I

    sget v0, Lflyme/R$drawable;->mz_tab_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_background:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_add_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_add_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_add_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_add_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_back_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_back_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_back_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_back_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_cancel_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_cancel_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_cancel_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_cancel_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_collect_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_collect_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_collect_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_collect_red:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_delete_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_delete_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_delete_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_delete_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_done_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_done_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_done_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_done_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_download_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_download_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_download_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_download_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_edit_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_edit_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_edit_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_edit_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_favorite_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_favorite_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_favorite_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_favorite_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_more_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_more_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_more_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_more_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_move_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_move_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_move_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_move_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_praise_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_praise_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_praise_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_praise_red:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_refresh_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_refresh_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_refresh_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_refresh_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_refresh_stop_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_refresh_stop_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_return_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_return_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_search_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_search_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_search_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_search_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_send_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_send_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_send_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_send_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_settings_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_settings_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_share_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_share_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_share_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_share_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_upload_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_upload_dark:I

    sget v0, Lflyme/R$drawable;->mz_tab_ic_upload_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_ic_upload_light:I

    sget v0, Lflyme/R$drawable;->mz_tab_indicator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_indicator:I

    sget v0, Lflyme/R$drawable;->mz_tab_selected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_tab_selected:I

    sget v0, Lflyme/R$drawable;->mz_text_cursor_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_cursor_dark:I

    sget v0, Lflyme/R$drawable;->mz_text_cursor_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_cursor_light:I

    sget v0, Lflyme/R$drawable;->mz_text_cursor_light_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_cursor_light_default:I

    sget v0, Lflyme/R$drawable;->mz_text_select_handle_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_select_handle_left:I

    sget v0, Lflyme/R$drawable;->mz_text_select_handle_left_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_select_handle_left_color_default:I

    sget v0, Lflyme/R$drawable;->mz_text_select_handle_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_select_handle_right:I

    sget v0, Lflyme/R$drawable;->mz_text_select_handle_right_color_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_text_select_handle_right_color_default:I

    sget v0, Lflyme/R$drawable;->mz_textfield_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_textfield_default:I

    sget v0, Lflyme/R$drawable;->mz_textfield_default_color_blue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_textfield_default_color_blue:I

    sget v0, Lflyme/R$drawable;->mz_textfield_nocursor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_textfield_nocursor:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_divide_white:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_background_bottom_white:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_back_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_back_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_back_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_back_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_list_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_list_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_list_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_list_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_more_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_more_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_more_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_more_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_search_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_search_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_search_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_search_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_setting_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_setting_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_setting_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_setting_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_share_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_share_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_share_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_share_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_tab_unfold_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_tab_unfold_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_ic_tab_unfold_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_ic_tab_unfold_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_delete_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_delete_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_delete_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_delete_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_search_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_search_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_search_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_search_light:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_voice_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_voice_dark:I

    sget v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_voice_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_titlebar_search_layout_ic_voice_light:I

    sget v0, Lflyme/R$drawable;->mz_toast_frame:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_toast_frame:I

    sget v0, Lflyme/R$drawable;->mz_topbar_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_topbar_background:I

    sget v0, Lflyme/R$drawable;->mz_topbar_dropdown_ic_arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_topbar_dropdown_ic_arrow:I

    sget v0, Lflyme/R$drawable;->mz_topbar_shadow_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_topbar_shadow_light:I

    sget v0, Lflyme/R$drawable;->mz_voice_loading_00:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_voice_loading_00:I

    sget v0, Lflyme/R$drawable;->mz_voice_loading_01:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_voice_loading_01:I

    sget v0, Lflyme/R$drawable;->mz_voice_loading_02:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_voice_loading_02:I

    sget v0, Lflyme/R$drawable;->mz_voice_loading_03:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_voice_loading_03:I

    sget v0, Lflyme/R$drawable;->mz_white_action_bar_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_white_action_bar_background:I

    sget v0, Lflyme/R$drawable;->mz_work_picture_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->mz_work_picture_big:I

    sget v0, Lflyme/R$drawable;->nosim_notice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->nosim_notice:I

    sget v0, Lflyme/R$drawable;->nosim_notice_m:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->nosim_notice_m:I

    sget v0, Lflyme/R$drawable;->notification_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->notification_bg:I

    sget v0, Lflyme/R$drawable;->notification_template_big_picture_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->notification_template_big_picture_bg:I

    sget v0, Lflyme/R$drawable;->number_menu_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->number_menu_back:I

    sget v0, Lflyme/R$drawable;->number_menu_back_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->number_menu_back_press:I

    sget v0, Lflyme/R$drawable;->overscroll_edge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->overscroll_edge:I

    sget v0, Lflyme/R$drawable;->overscroll_glow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->overscroll_glow:I

    sget v0, Lflyme/R$drawable;->progress_circle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->progress_circle:I

    sget v0, Lflyme/R$drawable;->security_kb_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_delete:I

    sget v0, Lflyme/R$drawable;->security_kb_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_enter:I

    sget v0, Lflyme/R$drawable;->security_kb_hide:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_hide:I

    sget v0, Lflyme/R$drawable;->security_kb_letter_key_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_letter_key_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_lock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_lock:I

    sget v0, Lflyme/R$drawable;->security_kb_logo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_logo:I

    sget v0, Lflyme/R$drawable;->security_kb_normal_key_bg_n:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_normal_key_bg_n:I

    sget v0, Lflyme/R$drawable;->security_kb_normal_key_bg_p:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_normal_key_bg_p:I

    sget v0, Lflyme/R$drawable;->security_kb_number_back_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_number_back_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_number_back_bg_n:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_number_back_bg_n:I

    sget v0, Lflyme/R$drawable;->security_kb_number_back_bg_p:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_number_back_bg_p:I

    sget v0, Lflyme/R$drawable;->security_kb_number_key_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_number_key_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_number_scroll_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_number_scroll_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_scroll_key_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_scroll_key_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_scroll_key_bg_n:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_scroll_key_bg_n:I

    sget v0, Lflyme/R$drawable;->security_kb_scroll_key_bg_p:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_scroll_key_bg_p:I

    sget v0, Lflyme/R$drawable;->security_kb_scrollbar_thumb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_scrollbar_thumb:I

    sget v0, Lflyme/R$drawable;->security_kb_shift_lock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_shift_lock:I

    sget v0, Lflyme/R$drawable;->security_kb_shift_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_shift_off:I

    sget v0, Lflyme/R$drawable;->security_kb_shift_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_shift_on:I

    sget v0, Lflyme/R$drawable;->security_kb_space_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_space_big:I

    sget v0, Lflyme/R$drawable;->security_kb_space_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_space_small:I

    sget v0, Lflyme/R$drawable;->security_kb_symbol_key_bg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_symbol_key_bg:I

    sget v0, Lflyme/R$drawable;->security_kb_symbol_key_bg_n:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_symbol_key_bg_n:I

    sget v0, Lflyme/R$drawable;->security_kb_symbol_key_bg_p:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_symbol_key_bg_p:I

    sget v0, Lflyme/R$drawable;->security_kb_unlock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_kb_unlock:I

    sget v0, Lflyme/R$drawable;->security_pay_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_big:I

    sget v0, Lflyme/R$drawable;->security_pay_button_shap:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_button_shap:I

    sget v0, Lflyme/R$drawable;->security_pay_button_shap_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_button_shap_normal:I

    sget v0, Lflyme/R$drawable;->security_pay_button_shap_pressed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_button_shap_pressed:I

    sget v0, Lflyme/R$drawable;->security_pay_icon_big:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_icon_big:I

    sget v0, Lflyme/R$drawable;->security_pay_icon_dot:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_icon_dot:I

    sget v0, Lflyme/R$drawable;->security_pay_icon_medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_icon_medium:I

    sget v0, Lflyme/R$drawable;->security_pay_icon_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_icon_small:I

    sget v0, Lflyme/R$drawable;->security_pay_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->security_pay_small:I

    sget v0, Lflyme/R$drawable;->sim1_notice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->sim1_notice:I

    sget v0, Lflyme/R$drawable;->sim1_notice_m:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->sim1_notice_m:I

    sget v0, Lflyme/R$drawable;->sim2_notice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->sim2_notice:I

    sget v0, Lflyme/R$drawable;->sim2_notice_m:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->sim2_notice_m:I

    sget v0, Lflyme/R$drawable;->start_window_backgound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->start_window_backgound:I

    sget v0, Lflyme/R$drawable;->stat_sys_tether_bluetooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->stat_sys_tether_bluetooth:I

    sget v0, Lflyme/R$drawable;->status_icon_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->status_icon_background:I

    sget v0, Lflyme/R$drawable;->status_list_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->status_list_divider:I

    sget v0, Lflyme/R$drawable;->subdisplay_fsaa_cover:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->subdisplay_fsaa_cover:I

    sget v0, Lflyme/R$drawable;->text_select_handle_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->text_select_handle_left:I

    sget v0, Lflyme/R$drawable;->text_select_handle_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->text_select_handle_right:I

    sget v0, Lflyme/R$drawable;->title_bar_shadow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->title_bar_shadow:I

    sget v0, Lflyme/R$drawable;->verify:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->verify:I

    sget v0, Lflyme/R$drawable;->volume_dialog_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->volume_dialog_background:I

    sget v0, Lflyme/R$drawable;->volume_progress_drawable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$drawable;->volume_progress_drawable:I

    sget v0, Lflyme/R$fraction;->config_maximumSubScreenDimRatio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$fraction;->config_maximumSubScreenDimRatio:I

    sget v0, Lflyme/R$id;->MODE_DIALOG:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->MODE_DIALOG:I

    sget v0, Lflyme/R$id;->MODE_DROPDOWN:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->MODE_DROPDOWN:I

    sget v0, Lflyme/R$id;->accept:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->accept:I

    sget v0, Lflyme/R$id;->action0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->action0:I

    sget v0, Lflyme/R$id;->action0_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->action0_layout:I

    sget v0, Lflyme/R$id;->action_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->action_divider:I

    sget v0, Lflyme/R$id;->actions:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->actions:I

    sget v0, Lflyme/R$id;->activation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->activation:I

    sget v0, Lflyme/R$id;->airplane_img:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->airplane_img:I

    sget v0, Lflyme/R$id;->airplane_img_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->airplane_img_light:I

    sget v0, Lflyme/R$id;->airplane_linear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->airplane_linear:I

    sget v0, Lflyme/R$id;->alertTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->alertTitle:I

    sget v0, Lflyme/R$id;->arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->arrow:I

    sget v0, Lflyme/R$id;->big_picture:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->big_picture:I

    sget v0, Lflyme/R$id;->big_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->big_text:I

    sget v0, Lflyme/R$id;->body:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->body:I

    sget v0, Lflyme/R$id;->bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->bottom:I

    sget v0, Lflyme/R$id;->bottom_frame:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->bottom_frame:I

    sget v0, Lflyme/R$id;->buttonBarPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->buttonBarPanel:I

    sget v0, Lflyme/R$id;->buttonPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->buttonPanel:I

    sget v0, Lflyme/R$id;->cancel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->cancel:I

    sget v0, Lflyme/R$id;->cancel_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->cancel_text:I

    sget v0, Lflyme/R$id;->center:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->center:I

    sget v0, Lflyme/R$id;->center_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->center_horizontal:I

    sget v0, Lflyme/R$id;->center_vertical:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->center_vertical:I

    sget v0, Lflyme/R$id;->checkbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->checkbox:I

    sget v0, Lflyme/R$id;->chronometer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->chronometer:I

    sget v0, Lflyme/R$id;->clickRemove:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->clickRemove:I

    sget v0, Lflyme/R$id;->close_linear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->close_linear:I

    sget v0, Lflyme/R$id;->close_txt:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->close_txt:I

    sget v0, Lflyme/R$id;->confirm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->confirm:I

    sget v0, Lflyme/R$id;->contentPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->contentPanel:I

    sget v0, Lflyme/R$id;->copyAll:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->copyAll:I

    sget v0, Lflyme/R$id;->cover_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->cover_image:I

    sget v0, Lflyme/R$id;->customPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->customPanel:I

    sget v0, Lflyme/R$id;->datePicker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->datePicker:I

    sget v0, Lflyme/R$id;->delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->delete:I

    sget v0, Lflyme/R$id;->delete_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->delete_btn:I

    sget v0, Lflyme/R$id;->dex_opt_progressbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->dex_opt_progressbar:I

    sget v0, Lflyme/R$id;->drag_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->drag_icon:I

    sget v0, Lflyme/R$id;->edittext_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->edittext_container:I

    sget v0, Lflyme/R$id;->emergency_divider_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->emergency_divider_left:I

    sget v0, Lflyme/R$id;->emergency_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->emergency_layout:I

    sget v0, Lflyme/R$id;->emergency_layout_cancel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->emergency_layout_cancel:I

    sget v0, Lflyme/R$id;->emergency_layout_dialer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->emergency_layout_dialer:I

    sget v0, Lflyme/R$id;->emergency_layout_forget_pwd:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->emergency_layout_forget_pwd:I

    sget v0, Lflyme/R$id;->event_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->event_content:I

    sget v0, Lflyme/R$id;->event_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->event_icon:I

    sget v0, Lflyme/R$id;->event_remember:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->event_remember:I

    sget v0, Lflyme/R$id;->event_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->event_title:I

    sget v0, Lflyme/R$id;->expand_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->expand_button:I

    sget v0, Lflyme/R$id;->expand_button_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->expand_button_divider:I

    sget v0, Lflyme/R$id;->finish:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->finish:I

    sget v0, Lflyme/R$id;->flingRemove:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->flingRemove:I

    sget v0, Lflyme/R$id;->forget_pwd:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->forget_pwd:I

    sget v0, Lflyme/R$id;->forget_pwd_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->forget_pwd_layout:I

    sget v0, Lflyme/R$id;->icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->icon:I

    sget v0, Lflyme/R$id;->image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->image:I

    sget v0, Lflyme/R$id;->inbox_end_pad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_end_pad:I

    sget v0, Lflyme/R$id;->inbox_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_more:I

    sget v0, Lflyme/R$id;->inbox_text0:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text0:I

    sget v0, Lflyme/R$id;->inbox_text1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text1:I

    sget v0, Lflyme/R$id;->inbox_text2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text2:I

    sget v0, Lflyme/R$id;->inbox_text3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text3:I

    sget v0, Lflyme/R$id;->inbox_text4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text4:I

    sget v0, Lflyme/R$id;->inbox_text5:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text5:I

    sget v0, Lflyme/R$id;->inbox_text6:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inbox_text6:I

    sget v0, Lflyme/R$id;->info:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->info:I

    sget v0, Lflyme/R$id;->inputTips:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inputTips:I

    sget v0, Lflyme/R$id;->inputTips2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->inputTips2:I

    sget v0, Lflyme/R$id;->input_method_cover_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->input_method_cover_view:I

    sget v0, Lflyme/R$id;->keep_all_root:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->keep_all_root:I

    sget v0, Lflyme/R$id;->keyPad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->keyPad:I

    sget v0, Lflyme/R$id;->keypadRoot:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->keypadRoot:I

    sget v0, Lflyme/R$id;->keypadView:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->keypadView:I

    sget v0, Lflyme/R$id;->left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->left:I

    sget v0, Lflyme/R$id;->left_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->left_button:I

    sget v0, Lflyme/R$id;->left_notifcation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->left_notifcation:I

    sget v0, Lflyme/R$id;->left_usb_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->left_usb_icon:I

    sget v0, Lflyme/R$id;->level_percent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->level_percent:I

    sget v0, Lflyme/R$id;->line1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->line1:I

    sget v0, Lflyme/R$id;->line3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->line3:I

    sget v0, Lflyme/R$id;->main:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->main:I

    sget v0, Lflyme/R$id;->menu_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->menu_layout:I

    sget v0, Lflyme/R$id;->message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->message:I

    sget v0, Lflyme/R$id;->middle_notifcation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->middle_notifcation:I

    sget v0, Lflyme/R$id;->modeMsg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->modeMsg:I

    sget v0, Lflyme/R$id;->modeTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->modeTitle:I

    sget v0, Lflyme/R$id;->mtp_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mtp_btn:I

    sget v0, Lflyme/R$id;->mz_alwaysUse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_alwaysUse:I

    sget v0, Lflyme/R$id;->mz_check_bar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_check_bar:I

    sget v0, Lflyme/R$id;->mz_checkbox_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_checkbox_container:I

    sget v0, Lflyme/R$id;->mz_column1Layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_column1Layout:I

    sget v0, Lflyme/R$id;->mz_column2Layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_column2Layout:I

    sget v0, Lflyme/R$id;->mz_column3Layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_column3Layout:I

    sget v0, Lflyme/R$id;->mz_column_parent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_column_parent:I

    sget v0, Lflyme/R$id;->mz_confirm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_confirm:I

    sget v0, Lflyme/R$id;->mz_date:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_date:I

    sget v0, Lflyme/R$id;->mz_divider_bar1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_divider_bar1:I

    sget v0, Lflyme/R$id;->mz_divider_bar2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_divider_bar2:I

    sget v0, Lflyme/R$id;->mz_extra_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_extra_container:I

    sget v0, Lflyme/R$id;->mz_globalaction_buttons:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_globalaction_buttons:I

    sget v0, Lflyme/R$id;->mz_globalaction_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_globalaction_layout:I

    sget v0, Lflyme/R$id;->mz_grid_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_grid_title:I

    sget v0, Lflyme/R$id;->mz_icon_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_icon_container:I

    sget v0, Lflyme/R$id;->mz_item_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_item_container:I

    sget v0, Lflyme/R$id;->mz_message_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_message_icon:I

    sget v0, Lflyme/R$id;->mz_mode1_imageview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_mode1_imageview:I

    sget v0, Lflyme/R$id;->mz_mode1_textview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_mode1_textview:I

    sget v0, Lflyme/R$id;->mz_mode2_imageview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_mode2_imageview:I

    sget v0, Lflyme/R$id;->mz_mode2_textview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_mode2_textview:I

    sget v0, Lflyme/R$id;->mz_powermode_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_powermode_1:I

    sget v0, Lflyme/R$id;->mz_powermode_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_powermode_title:I

    sget v0, Lflyme/R$id;->mz_pppoe_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_pppoe_icon:I

    sget v0, Lflyme/R$id;->mz_pppoe_subTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_pppoe_subTitle:I

    sget v0, Lflyme/R$id;->mz_pppoe_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_pppoe_title:I

    sget v0, Lflyme/R$id;->mz_preference_text_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_preference_text_layout:I

    sget v0, Lflyme/R$id;->mz_recommend_alwaysUse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_recommend_alwaysUse:I

    sget v0, Lflyme/R$id;->mz_recommend_apps_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_recommend_apps_grid:I

    sget v0, Lflyme/R$id;->mz_recommend_check_bar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_recommend_check_bar:I

    sget v0, Lflyme/R$id;->mz_resolver_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_resolver_back:I

    sget v0, Lflyme/R$id;->mz_resolver_drag_handle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_resolver_drag_handle:I

    sget v0, Lflyme/R$id;->mz_resolver_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_resolver_grid:I

    sget v0, Lflyme/R$id;->mz_resolver_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_resolver_list:I

    sget v0, Lflyme/R$id;->mz_restart:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_restart:I

    sget v0, Lflyme/R$id;->mz_scroll1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll1:I

    sget v0, Lflyme/R$id;->mz_scroll1_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll1_text:I

    sget v0, Lflyme/R$id;->mz_scroll2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll2:I

    sget v0, Lflyme/R$id;->mz_scroll2_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll2_text:I

    sget v0, Lflyme/R$id;->mz_scroll3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll3:I

    sget v0, Lflyme/R$id;->mz_scroll3_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_scroll3_text:I

    sget v0, Lflyme/R$id;->mz_select_box:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_select_box:I

    sget v0, Lflyme/R$id;->mz_shutdown:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_shutdown:I

    sget v0, Lflyme/R$id;->mz_subTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_subTitle:I

    sget v0, Lflyme/R$id;->mz_text_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->mz_text_container:I

    sget v0, Lflyme/R$id;->normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->normal:I

    sget v0, Lflyme/R$id;->ok:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->ok:I

    sget v0, Lflyme/R$id;->onDown:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->onDown:I

    sget v0, Lflyme/R$id;->onLongPress:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->onLongPress:I

    sget v0, Lflyme/R$id;->onMove:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->onMove:I

    sget v0, Lflyme/R$id;->overflow_divider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->overflow_divider:I

    sget v0, Lflyme/R$id;->padding:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->padding:I

    sget v0, Lflyme/R$id;->parentPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->parentPanel:I

    sget v0, Lflyme/R$id;->password:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->password:I

    sget v0, Lflyme/R$id;->password_edit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->password_edit:I

    sget v0, Lflyme/R$id;->point_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->point_view:I

    sget v0, Lflyme/R$id;->preference_text_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->preference_text_layout:I

    sget v0, Lflyme/R$id;->progress:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->progress:I

    sget v0, Lflyme/R$id;->ptp_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->ptp_btn:I

    sget v0, Lflyme/R$id;->radio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->radio:I

    sget v0, Lflyme/R$id;->reboot_linear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->reboot_linear:I

    sget v0, Lflyme/R$id;->reboot_txt:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->reboot_txt:I

    sget v0, Lflyme/R$id;->recommend_app_summary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->recommend_app_summary:I

    sget v0, Lflyme/R$id;->recommend_app_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->recommend_app_title:I

    sget v0, Lflyme/R$id;->recommend_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->recommend_icon:I

    sget v0, Lflyme/R$id;->reject:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->reject:I

    sget v0, Lflyme/R$id;->reminder:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->reminder:I

    sget v0, Lflyme/R$id;->right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->right:I

    sget v0, Lflyme/R$id;->right_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->right_button:I

    sget v0, Lflyme/R$id;->right_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->right_icon:I

    sget v0, Lflyme/R$id;->right_notifcation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->right_notifcation:I

    sget v0, Lflyme/R$id;->scrollView:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->scrollView:I

    sget v0, Lflyme/R$id;->security_kb_hide:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_hide:I

    sget v0, Lflyme/R$id;->security_kb_key_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_key_image:I

    sget v0, Lflyme/R$id;->security_kb_key_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_key_text:I

    sget v0, Lflyme/R$id;->security_kb_letter_ASCII_44:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_ASCII_44:I

    sget v0, Lflyme/R$id;->security_kb_letter_ASCII_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_ASCII_46:I

    sget v0, Lflyme/R$id;->security_kb_letter_a:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_a:I

    sget v0, Lflyme/R$id;->security_kb_letter_b:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_b:I

    sget v0, Lflyme/R$id;->security_kb_letter_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_c:I

    sget v0, Lflyme/R$id;->security_kb_letter_d:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_d:I

    sget v0, Lflyme/R$id;->security_kb_letter_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_delete:I

    sget v0, Lflyme/R$id;->security_kb_letter_e:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_e:I

    sget v0, Lflyme/R$id;->security_kb_letter_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_enter:I

    sget v0, Lflyme/R$id;->security_kb_letter_f:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_f:I

    sget v0, Lflyme/R$id;->security_kb_letter_g:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_g:I

    sget v0, Lflyme/R$id;->security_kb_letter_h:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_h:I

    sget v0, Lflyme/R$id;->security_kb_letter_i:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_i:I

    sget v0, Lflyme/R$id;->security_kb_letter_j:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_j:I

    sget v0, Lflyme/R$id;->security_kb_letter_k:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_k:I

    sget v0, Lflyme/R$id;->security_kb_letter_l:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_l:I

    sget v0, Lflyme/R$id;->security_kb_letter_m:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_m:I

    sget v0, Lflyme/R$id;->security_kb_letter_n:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_n:I

    sget v0, Lflyme/R$id;->security_kb_letter_number:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_number:I

    sget v0, Lflyme/R$id;->security_kb_letter_o:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_o:I

    sget v0, Lflyme/R$id;->security_kb_letter_p:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_p:I

    sget v0, Lflyme/R$id;->security_kb_letter_q:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_q:I

    sget v0, Lflyme/R$id;->security_kb_letter_r:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_r:I

    sget v0, Lflyme/R$id;->security_kb_letter_s:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_s:I

    sget v0, Lflyme/R$id;->security_kb_letter_shift:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_shift:I

    sget v0, Lflyme/R$id;->security_kb_letter_space:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_space:I

    sget v0, Lflyme/R$id;->security_kb_letter_symbol:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_symbol:I

    sget v0, Lflyme/R$id;->security_kb_letter_t:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_t:I

    sget v0, Lflyme/R$id;->security_kb_letter_u:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_u:I

    sget v0, Lflyme/R$id;->security_kb_letter_v:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_v:I

    sget v0, Lflyme/R$id;->security_kb_letter_w:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_w:I

    sget v0, Lflyme/R$id;->security_kb_letter_wrapper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_wrapper:I

    sget v0, Lflyme/R$id;->security_kb_letter_x:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_x:I

    sget v0, Lflyme/R$id;->security_kb_letter_y:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_y:I

    sget v0, Lflyme/R$id;->security_kb_letter_z:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_letter_z:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_37:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_37:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_42:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_42:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_43:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_43:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_45:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_45:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_46:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_47:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_47:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_58:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_58:I

    sget v0, Lflyme/R$id;->security_kb_number_ASCII_61:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_ASCII_61:I

    sget v0, Lflyme/R$id;->security_kb_number_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_back:I

    sget v0, Lflyme/R$id;->security_kb_number_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_delete:I

    sget v0, Lflyme/R$id;->security_kb_number_eight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_eight:I

    sget v0, Lflyme/R$id;->security_kb_number_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_enter:I

    sget v0, Lflyme/R$id;->security_kb_number_five:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_five:I

    sget v0, Lflyme/R$id;->security_kb_number_four:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_four:I

    sget v0, Lflyme/R$id;->security_kb_number_nine:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_nine:I

    sget v0, Lflyme/R$id;->security_kb_number_one:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_one:I

    sget v0, Lflyme/R$id;->security_kb_number_seven:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_seven:I

    sget v0, Lflyme/R$id;->security_kb_number_six:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_six:I

    sget v0, Lflyme/R$id;->security_kb_number_space:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_space:I

    sget v0, Lflyme/R$id;->security_kb_number_symbol:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_symbol:I

    sget v0, Lflyme/R$id;->security_kb_number_three:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_three:I

    sget v0, Lflyme/R$id;->security_kb_number_two:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_two:I

    sget v0, Lflyme/R$id;->security_kb_number_wrapper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_wrapper:I

    sget v0, Lflyme/R$id;->security_kb_number_zero:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_number_zero:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_123:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_123:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_124:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_124:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_125:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_125:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_126:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_126:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_33:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_33:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_34:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_34:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_35:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_35:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_36:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_36:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_37:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_37:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_38:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_38:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_39:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_39:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_40:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_40:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_41:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_41:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_42:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_42:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_43:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_43:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_44:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_44:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_45:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_45:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_46:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_47:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_47:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_58:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_58:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_59:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_59:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_60:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_60:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_61:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_61:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_62:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_62:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_63:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_63:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_64:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_64:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_91:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_91:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_92:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_92:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_93:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_93:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_94:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_94:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_95:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_95:I

    sget v0, Lflyme/R$id;->security_kb_symbol_ASCII_96:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_ASCII_96:I

    sget v0, Lflyme/R$id;->security_kb_symbol_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_back:I

    sget v0, Lflyme/R$id;->security_kb_symbol_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_delete:I

    sget v0, Lflyme/R$id;->security_kb_symbol_lock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_lock:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_book_mark_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_book_mark_left:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_book_mark_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_book_mark_right:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_divide:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_divide:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_ellipsis:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_ellipsis:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_euro:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_euro:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_point:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_point:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_pound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_pound:I

    sget v0, Lflyme/R$id;->security_kb_symbol_special_rmb:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_special_rmb:I

    sget v0, Lflyme/R$id;->security_kb_symbol_wrapper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_kb_symbol_wrapper:I

    sget v0, Lflyme/R$id;->security_pay_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_button:I

    sget v0, Lflyme/R$id;->security_pay_debug_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_debug_text:I

    sget v0, Lflyme/R$id;->security_pay_event_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_event_text:I

    sget v0, Lflyme/R$id;->security_pay_icon_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_icon_text:I

    sget v0, Lflyme/R$id;->security_pay_password_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_password_text:I

    sget v0, Lflyme/R$id;->security_pay_process_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_process_text:I

    sget v0, Lflyme/R$id;->security_pay_sms_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_sms_text:I

    sget v0, Lflyme/R$id;->security_pay_surface_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_surface_text:I

    sget v0, Lflyme/R$id;->security_pay_title_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->security_pay_title_text:I

    sget v0, Lflyme/R$id;->seekbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->seekbar:I

    sget v0, Lflyme/R$id;->shape_id:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->shape_id:I

    sget v0, Lflyme/R$id;->share_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->share_btn:I

    sget v0, Lflyme/R$id;->share_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->share_layout:I

    sget v0, Lflyme/R$id;->share_viewpager:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->share_viewpager:I

    sget v0, Lflyme/R$id;->shortcut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->shortcut:I

    sget v0, Lflyme/R$id;->sim_indicator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->sim_indicator:I

    sget v0, Lflyme/R$id;->slider_group:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->slider_group:I

    sget v0, Lflyme/R$id;->space:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->space:I

    sget v0, Lflyme/R$id;->special:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->special:I

    sget v0, Lflyme/R$id;->status_bar_latest_event_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->status_bar_latest_event_content:I

    sget v0, Lflyme/R$id;->stream_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->stream_icon:I

    sget v0, Lflyme/R$id;->subTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->subTitle:I

    sget v0, Lflyme/R$id;->system_update_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->system_update_text:I

    sget v0, Lflyme/R$id;->system_update_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->system_update_title:I

    sget v0, Lflyme/R$id;->text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->text:I

    sget v0, Lflyme/R$id;->text1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->text1:I

    sget v0, Lflyme/R$id;->text2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->text2:I

    sget v0, Lflyme/R$id;->textPad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->textPad:I

    sget v0, Lflyme/R$id;->text_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->text_button:I

    sget v0, Lflyme/R$id;->time:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->time:I

    sget v0, Lflyme/R$id;->timePicker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->timePicker:I

    sget v0, Lflyme/R$id;->title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->title:I

    sget v0, Lflyme/R$id;->titleDivider:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->titleDivider:I

    sget v0, Lflyme/R$id;->titleDividerTop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->titleDividerTop:I

    sget v0, Lflyme/R$id;->title_template:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->title_template:I

    sget v0, Lflyme/R$id;->top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->top:I

    sget v0, Lflyme/R$id;->topDisplayGroup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->topDisplayGroup:I

    sget v0, Lflyme/R$id;->topPanel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->topPanel:I

    sget v0, Lflyme/R$id;->upgrade_logo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->upgrade_logo:I

    sget v0, Lflyme/R$id;->upgrade_main_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->upgrade_main_msg:I

    sget v0, Lflyme/R$id;->upgrading_system_progressbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->upgrading_system_progressbar:I

    sget v0, Lflyme/R$id;->upgrading_system_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->upgrading_system_title:I

    sget v0, Lflyme/R$id;->vibrator_img:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->vibrator_img:I

    sget v0, Lflyme/R$id;->vibrator_img_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->vibrator_img_light:I

    sget v0, Lflyme/R$id;->vibrator_linear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->vibrator_linear:I

    sget v0, Lflyme/R$id;->viewpager_overscroll_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->viewpager_overscroll_layout:I

    sget v0, Lflyme/R$id;->visible_panel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->visible_panel:I

    sget v0, Lflyme/R$id;->volume_img:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->volume_img:I

    sget v0, Lflyme/R$id;->volume_img_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->volume_img_light:I

    sget v0, Lflyme/R$id;->volume_linear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->volume_linear:I

    sget v0, Lflyme/R$id;->volume_seekbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$id;->volume_seekbar:I

    sget v0, Lflyme/R$integer;->config_ScreenBrightnessDimRate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_ScreenBrightnessDimRate:I

    sget v0, Lflyme/R$integer;->config_ScreenBrightnessMinLevel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_ScreenBrightnessMinLevel:I

    sget v0, Lflyme/R$integer;->config_actionbarAnimationTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_actionbarAnimationTime:I

    sget v0, Lflyme/R$integer;->config_activityDefaultDur:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_activityDefaultDur:I

    sget v0, Lflyme/R$integer;->config_activityShortDur:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_activityShortDur:I

    sget v0, Lflyme/R$integer;->config_appAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_appAnimTime:I

    sget v0, Lflyme/R$integer;->config_automaticBrightnessAdjResolution:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_automaticBrightnessAdjResolution:I

    sget v0, Lflyme/R$integer;->config_buttonFadeTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_buttonFadeTime:I

    sget v0, Lflyme/R$integer;->config_calculatorAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_calculatorAnimTime:I

    sget v0, Lflyme/R$integer;->config_calculator_big_to_small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_calculator_big_to_small:I

    sget v0, Lflyme/R$integer;->config_chevron_animation_duration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_chevron_animation_duration:I

    sget v0, Lflyme/R$integer;->config_chevron_incremental_delay:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_chevron_incremental_delay:I

    sget v0, Lflyme/R$integer;->config_criticalBatteryWarningLevel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_criticalBatteryWarningLevel:I

    sget v0, Lflyme/R$integer;->config_editNewAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_editNewAnimTime:I

    sget v0, Lflyme/R$integer;->config_emoAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_emoAnimTime:I

    sget v0, Lflyme/R$integer;->config_extra_appAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_extra_appAnimTime:I

    sget v0, Lflyme/R$integer;->config_first_line_cursor_cut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_first_line_cursor_cut:I

    sget v0, Lflyme/R$integer;->config_fragmentAlphaAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_fragmentAlphaAnimTime:I

    sget v0, Lflyme/R$integer;->config_fragmentAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_fragmentAnimTime:I

    sget v0, Lflyme/R$integer;->config_fragmentFadeDur:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_fragmentFadeDur:I

    sget v0, Lflyme/R$integer;->config_inputAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_inputAnimTime:I

    sget v0, Lflyme/R$integer;->config_inputEnterAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_inputEnterAnimTime:I

    sget v0, Lflyme/R$integer;->config_inputExitAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_inputExitAnimTime:I

    sget v0, Lflyme/R$integer;->config_lightSensorValueDebounceDelayTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_lightSensorValueDebounceDelayTime:I

    sget v0, Lflyme/R$integer;->config_line_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_line_scale:I

    sget v0, Lflyme/R$integer;->config_lockNumAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_lockNumAnimTime:I

    sget v0, Lflyme/R$integer;->config_lockPointAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_lockPointAnimTime:I

    sget v0, Lflyme/R$integer;->config_lowBatteryCloseWarningLevel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_lowBatteryCloseWarningLevel:I

    sget v0, Lflyme/R$integer;->config_lowBatteryWarningLevel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_lowBatteryWarningLevel:I

    sget v0, Lflyme/R$integer;->config_maxResolverActivityColumns:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_maxResolverActivityColumns:I

    sget v0, Lflyme/R$integer;->config_maximumSubScreenDimDuration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_maximumSubScreenDimDuration:I

    sget v0, Lflyme/R$integer;->config_minimumSubScreenOffTimeout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_minimumSubScreenOffTimeout:I

    sget v0, Lflyme/R$integer;->config_other_line_cursor_cut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_other_line_cursor_cut:I

    sget v0, Lflyme/R$integer;->config_protectFile_maxnum:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_protectFile_maxnum:I

    sget v0, Lflyme/R$integer;->config_screenBrightnessMax:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_screenBrightnessMax:I

    sget v0, Lflyme/R$integer;->config_screenBrightnessMaxLevel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_screenBrightnessMaxLevel:I

    sget v0, Lflyme/R$integer;->config_screenBrightnessMin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_screenBrightnessMin:I

    sget v0, Lflyme/R$integer;->config_shutdownBatteryTemperature:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_shutdownBatteryTemperature:I

    sget v0, Lflyme/R$integer;->config_statusbarAnimationTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_statusbarAnimationTime:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessDark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessDark:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessDim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessDim:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessDoze:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessDoze:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessSettingDefault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessSettingDefault:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessSettingMaximum:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessSettingMaximum:I

    sget v0, Lflyme/R$integer;->config_subScreenBrightnessSettingMinimum:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_subScreenBrightnessSettingMinimum:I

    sget v0, Lflyme/R$integer;->config_taskAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_taskAnimTime:I

    sget v0, Lflyme/R$integer;->config_wallpaperAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_wallpaperAnimTime:I

    sget v0, Lflyme/R$integer;->config_wallpaperCloseExitAlphaAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_wallpaperCloseExitAlphaAnimTime:I

    sget v0, Lflyme/R$integer;->config_wallpaperCloseExitScaleAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_wallpaperCloseExitScaleAnimTime:I

    sget v0, Lflyme/R$integer;->config_zoominNextAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->config_zoominNextAnimTime:I

    sget v0, Lflyme/R$integer;->emo_col_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->emo_col_count:I

    sget v0, Lflyme/R$integer;->emo_row_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->emo_row_count:I

    sget v0, Lflyme/R$integer;->legacy_dhcp_client:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->legacy_dhcp_client:I

    sget v0, Lflyme/R$integer;->max_action_buttons:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->max_action_buttons:I

    sget v0, Lflyme/R$integer;->mz_config_activityAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_activityAnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_alert_dialog_AnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_alert_dialog_AnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_appAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_appAnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_app_close_exit_alpha_AnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_app_close_exit_alpha_AnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_app_close_exit_translate_AnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_app_close_exit_translate_AnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_app_open_enter_alpha_AnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_app_open_enter_alpha_AnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_editNewAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_editNewAnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_storageLowMemory:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_storageLowMemory:I

    sget v0, Lflyme/R$integer;->mz_config_taskAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_taskAnimTime:I

    sget v0, Lflyme/R$integer;->mz_config_wallpaperAnimTime:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_config_wallpaperAnimTime:I

    sget v0, Lflyme/R$integer;->mz_default_smartbar_padding_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_default_smartbar_padding_value:I

    sget v0, Lflyme/R$integer;->mz_listview_selector_fade_duration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$integer;->mz_listview_selector_fade_duration:I

    sget v0, Lflyme/R$interpolator;->input_method_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->input_method_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->input_method_enter_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->input_method_enter_translate:I

    sget v0, Lflyme/R$interpolator;->input_method_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->input_method_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->input_method_exit_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->input_method_exit_translate:I

    sget v0, Lflyme/R$interpolator;->mz_activity_to_next_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_activity_to_next_close_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_activity_to_next_close_exit_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_activity_to_next_close_exit_translate:I

    sget v0, Lflyme/R$interpolator;->mz_activity_to_next_open_enter_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_activity_to_next_open_enter_translate:I

    sget v0, Lflyme/R$interpolator;->mz_activity_to_next_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_activity_to_next_open_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_calculator_big_to_small_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_calculator_big_to_small_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_calculator_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_calculator_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_calculator_enter_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_calculator_enter_scale:I

    sget v0, Lflyme/R$interpolator;->mz_calculator_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_calculator_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_calculator_exit_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_calculator_exit_scale:I

    sget v0, Lflyme/R$interpolator;->mz_close_enter_alpha_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_close_enter_alpha_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_close_enter_scale_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_close_enter_scale_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_close_exit_alpha_bg_black_mask_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_close_exit_alpha_bg_black_mask_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_close_exit_alpha_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_close_exit_alpha_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_close_exit_scale_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_close_exit_scale_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_dialog_alert_alpha_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_dialog_alert_alpha_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_dialog_alert_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_dialog_alert_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_edit_new_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_edit_new_close_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_edit_new_close_exit_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_edit_new_close_exit_translate:I

    sget v0, Lflyme/R$interpolator;->mz_edit_new_open_enter_bg_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_edit_new_open_enter_bg_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_edit_new_open_enter_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_edit_new_open_enter_translate:I

    sget v0, Lflyme/R$interpolator;->mz_edit_new_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_edit_new_open_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_extra_close_exit_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_extra_close_exit_translate_app:I

    sget v0, Lflyme/R$interpolator;->mz_extra_open_enter_translate_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_extra_open_enter_translate_app:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_close_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_close_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_close_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_close_exit_translationx:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_close_exit_translationx:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_close_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_close_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_open_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_open_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_open_enter_translationx:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_open_enter_translationx:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_open_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_fragment_open_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_fragment_open_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_lock_num_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_lock_num_scale:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_alpha_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_alpha_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_scale_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_scale_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_translate_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_enter_translate_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_exit_translate_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_close_exit_translate_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_enter_translate_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_enter_translate_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_alpha_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_alpha_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_scale_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_scale_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_translate_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_new_app_to_next_open_exit_translate_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_open_enter_alpha_bg_black_mask_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_open_enter_alpha_bg_black_mask_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_open_enter_alpha_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_open_enter_alpha_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_open_enter_scale_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_open_enter_scale_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_open_exit_alpha_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_open_exit_alpha_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_open_exit_scale_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_open_exit_scale_wallpaper:I

    sget v0, Lflyme/R$interpolator;->mz_overflow_popup_enter_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_overflow_popup_enter_translate:I

    sget v0, Lflyme/R$interpolator;->mz_overflow_popup_exit_translate:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_overflow_popup_exit_translate:I

    sget v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect1_scalex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect1_scalex:I

    sget v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect1_translatex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect1_translatex:I

    sget v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect2_scalex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect2_scalex:I

    invoke-static {p0}, Lflyme/R;->onResourcesLoaded5(I)V

    return-void
.end method

.method private static onResourcesLoaded5(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    sget v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect2_translatex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_progress_indeterminate_horizontal_rect2_translatex:I

    sget v0, Lflyme/R$interpolator;->mz_resolver_decelerate_cubic:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_resolver_decelerate_cubic:I

    sget v0, Lflyme/R$interpolator;->mz_search_interpolator_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_search_interpolator_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_shared_dialog_bottom_enter_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_shared_dialog_bottom_enter_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_shared_dialog_bottom_exit_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_shared_dialog_bottom_exit_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_shared_dialog_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_shared_dialog_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_showat_bottom_dialog_in_interpolator_:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_showat_bottom_dialog_in_interpolator_:I

    sget v0, Lflyme/R$interpolator;->mz_showat_bottom_dialog_out_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_showat_bottom_dialog_out_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_staggeredgridview_alpha_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_staggeredgridview_alpha_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_staggeredgridview_scale_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_staggeredgridview_scale_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_close_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_close_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_close_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_close_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_close_exit_translationx:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_close_exit_translationx:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_open_enter_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_open_enter_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_open_enter_translationx:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_open_enter_translationx:I

    sget v0, Lflyme/R$interpolator;->mz_support_fragment_open_exit_alpha:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_support_fragment_open_exit_alpha:I

    sget v0, Lflyme/R$interpolator;->mz_text_shake:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_text_shake:I

    sget v0, Lflyme/R$interpolator;->mz_toast_enter_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_toast_enter_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_toast_exit_interpolator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_toast_exit_interpolator:I

    sget v0, Lflyme/R$interpolator;->mz_zoom_in_next_close_exit_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_zoom_in_next_close_exit_scale:I

    sget v0, Lflyme/R$interpolator;->mz_zoom_in_next_open_enter_scale:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$interpolator;->mz_zoom_in_next_open_enter_scale:I

    sget v0, Lflyme/R$layout;->airplane_notify_dialog_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->airplane_notify_dialog_view:I

    sget v0, Lflyme/R$layout;->android_upgrading_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->android_upgrading_layout:I

    sget v0, Lflyme/R$layout;->android_upgrading_silence_mode_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->android_upgrading_silence_mode_layout:I

    sget v0, Lflyme/R$layout;->confirm_password_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->confirm_password_view:I

    sget v0, Lflyme/R$layout;->flyme_confirm_password_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_confirm_password_view:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_icon_group:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_icon_group:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_icon_group_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_icon_group_headsup:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line1:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line1_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line1_headsup:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line2:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line2_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line2_headsup:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line3:I

    sget v0, Lflyme/R$layout;->flyme_notification_template_part_line3_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->flyme_notification_template_part_line3_headsup:I

    sget v0, Lflyme/R$layout;->globalaction_close_system_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->globalaction_close_system_dialog:I

    sget v0, Lflyme/R$layout;->input_method_cover_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->input_method_cover_container:I

    sget v0, Lflyme/R$layout;->input_method_cover_smile:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->input_method_cover_smile:I

    sget v0, Lflyme/R$layout;->input_method_cover_voice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->input_method_cover_voice:I

    sget v0, Lflyme/R$layout;->mc_permission_dialog_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mc_permission_dialog_view:I

    sget v0, Lflyme/R$layout;->mz_action_menu_item_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_action_menu_item_layout:I

    sget v0, Lflyme/R$layout;->mz_action_menu_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_action_menu_layout:I

    sget v0, Lflyme/R$layout;->mz_alert_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_alert_dialog:I

    sget v0, Lflyme/R$layout;->mz_checkbox_and_time_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_checkbox_and_time_layout:I

    sget v0, Lflyme/R$layout;->mz_checked_two_line_list_item_single_choice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_checked_two_line_list_item_single_choice:I

    sget v0, Lflyme/R$layout;->mz_date_picker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_date_picker:I

    sget v0, Lflyme/R$layout;->mz_date_picker_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_date_picker_dialog:I

    sget v0, Lflyme/R$layout;->mz_dropdown_list_header:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_dropdown_list_header:I

    sget v0, Lflyme/R$layout;->mz_globalaction_system_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_globalaction_system_dialog:I

    sget v0, Lflyme/R$layout;->mz_icon_only_notification_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_icon_only_notification_action:I

    sget v0, Lflyme/R$layout;->mz_icon_only_notification_action_tombstone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_icon_only_notification_action_tombstone:I

    sget v0, Lflyme/R$layout;->mz_list_item_2_single_choice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_list_item_2_single_choice:I

    sget v0, Lflyme/R$layout;->mz_list_menu_item_checkbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_list_menu_item_checkbox:I

    sget v0, Lflyme/R$layout;->mz_list_menu_item_header_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_list_menu_item_header_layout:I

    sget v0, Lflyme/R$layout;->mz_list_menu_item_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_list_menu_item_icon:I

    sget v0, Lflyme/R$layout;->mz_list_menu_item_radio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_list_menu_item_radio:I

    sget v0, Lflyme/R$layout;->mz_mtp_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_mtp_notification:I

    sget v0, Lflyme/R$layout;->mz_notification_template_base_single_line:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_notification_template_base_single_line:I

    sget v0, Lflyme/R$layout;->mz_notification_template_big_picture:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_notification_template_big_picture:I

    sget v0, Lflyme/R$layout;->mz_ongoing_pppoe_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_ongoing_pppoe_notification:I

    sget v0, Lflyme/R$layout;->mz_picker_column_1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_picker_column_1:I

    sget v0, Lflyme/R$layout;->mz_picker_column_2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_picker_column_2:I

    sget v0, Lflyme/R$layout;->mz_picker_column_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_picker_column_3:I

    sget v0, Lflyme/R$layout;->mz_powermode_alertdialog_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_powermode_alertdialog_view:I

    sget v0, Lflyme/R$layout;->mz_preference:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference:I

    sget v0, Lflyme/R$layout;->mz_preference_category:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_category:I

    sget v0, Lflyme/R$layout;->mz_preference_checkbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_checkbox:I

    sget v0, Lflyme/R$layout;->mz_preference_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_dialog:I

    sget v0, Lflyme/R$layout;->mz_preference_edittext:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_edittext:I

    sget v0, Lflyme/R$layout;->mz_preference_group_list_item_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_group_list_item_layout:I

    sget v0, Lflyme/R$layout;->mz_preference_horizontal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_horizontal:I

    sget v0, Lflyme/R$layout;->mz_preference_seekbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_seekbar:I

    sget v0, Lflyme/R$layout;->mz_preference_septation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_septation:I

    sget v0, Lflyme/R$layout;->mz_preference_widget_checkbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_preference_widget_checkbox:I

    sget v0, Lflyme/R$layout;->mz_progress_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_progress_dialog:I

    sget v0, Lflyme/R$layout;->mz_recommend_all_grid_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_recommend_all_grid_item:I

    sget v0, Lflyme/R$layout;->mz_recommend_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_recommend_grid:I

    sget v0, Lflyme/R$layout;->mz_recommend_header:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_recommend_header:I

    sget v0, Lflyme/R$layout;->mz_recommend_header_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_recommend_header_item:I

    sget v0, Lflyme/R$layout;->mz_resolve_custom_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolve_custom_title:I

    sget v0, Lflyme/R$layout;->mz_resolve_grid_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolve_grid_item:I

    sget v0, Lflyme/R$layout;->mz_resolve_list_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolve_list_item:I

    sget v0, Lflyme/R$layout;->mz_resolver_fragment1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolver_fragment1:I

    sget v0, Lflyme/R$layout;->mz_resolver_fragment2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolver_fragment2:I

    sget v0, Lflyme/R$layout;->mz_resolver_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolver_grid:I

    sget v0, Lflyme/R$layout;->mz_resolver_grid2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_resolver_grid2:I

    sget v0, Lflyme/R$layout;->mz_right_arrow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_right_arrow:I

    sget v0, Lflyme/R$layout;->mz_select_dialog_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_select_dialog_item:I

    sget v0, Lflyme/R$layout;->mz_select_dialog_multichoice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_select_dialog_multichoice:I

    sget v0, Lflyme/R$layout;->mz_select_dialog_singlechoice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_select_dialog_singlechoice:I

    sget v0, Lflyme/R$layout;->mz_select_popup_singlechoice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_select_popup_singlechoice:I

    sget v0, Lflyme/R$layout;->mz_simple_dropdown_hint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_simple_dropdown_hint:I

    sget v0, Lflyme/R$layout;->mz_simple_list_item_3:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_simple_list_item_3:I

    sget v0, Lflyme/R$layout;->mz_simple_list_item_4:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_simple_list_item_4:I

    sget v0, Lflyme/R$layout;->mz_time_picker_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_time_picker_dialog:I

    sget v0, Lflyme/R$layout;->mz_title_only_notification_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_title_only_notification_action:I

    sget v0, Lflyme/R$layout;->mz_title_only_notification_action_tombstone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_title_only_notification_action_tombstone:I

    sget v0, Lflyme/R$layout;->mz_transient_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_transient_notification:I

    sget v0, Lflyme/R$layout;->mz_update_battery_low:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_update_battery_low:I

    sget v0, Lflyme/R$layout;->mz_volume_adjust:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_volume_adjust:I

    sget v0, Lflyme/R$layout;->mz_volume_adjust_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->mz_volume_adjust_item:I

    sget v0, Lflyme/R$layout;->notification_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_action:I

    sget v0, Lflyme/R$layout;->notification_action_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_action_list:I

    sget v0, Lflyme/R$layout;->notification_action_list_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_action_list_headsup:I

    sget v0, Lflyme/R$layout;->notification_action_tombstone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_action_tombstone:I

    sget v0, Lflyme/R$layout;->notification_template_base:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_base:I

    sget v0, Lflyme/R$layout;->notification_template_base_circle_progressbar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_base_circle_progressbar:I

    sget v0, Lflyme/R$layout;->notification_template_base_circle_progressbar_control:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_base_circle_progressbar_control:I

    sget v0, Lflyme/R$layout;->notification_template_base_circle_progressbar_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_base_circle_progressbar_headsup:I

    sget v0, Lflyme/R$layout;->notification_template_base_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_base_headsup:I

    sget v0, Lflyme/R$layout;->notification_template_big_base:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_big_base:I

    sget v0, Lflyme/R$layout;->notification_template_big_base_headsup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_big_base_headsup:I

    sget v0, Lflyme/R$layout;->notification_template_big_picture:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_big_picture:I

    sget v0, Lflyme/R$layout;->notification_template_big_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_big_text:I

    sget v0, Lflyme/R$layout;->notification_template_inbox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_inbox:I

    sget v0, Lflyme/R$layout;->notification_template_part_chronometer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_part_chronometer:I

    sget v0, Lflyme/R$layout;->notification_template_part_time:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_part_time:I

    sget v0, Lflyme/R$layout;->notification_template_share_and_delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->notification_template_share_and_delete:I

    sget v0, Lflyme/R$layout;->permmision_confirms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->permmision_confirms:I

    sget v0, Lflyme/R$layout;->preference_child:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->preference_child:I

    sget v0, Lflyme/R$layout;->preference_header_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->preference_header_item:I

    sget v0, Lflyme/R$layout;->security_kb_layout_letter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_layout_letter:I

    sget v0, Lflyme/R$layout;->security_kb_layout_number:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_layout_number:I

    sget v0, Lflyme/R$layout;->security_kb_layout_root:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_layout_root:I

    sget v0, Lflyme/R$layout;->security_kb_layout_symbol:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_layout_symbol:I

    sget v0, Lflyme/R$layout;->security_kb_letter_key:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_letter_key:I

    sget v0, Lflyme/R$layout;->security_kb_number_key:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_number_key:I

    sget v0, Lflyme/R$layout;->security_kb_number_scroll_key:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_number_scroll_key:I

    sget v0, Lflyme/R$layout;->security_kb_symbol_key:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_kb_symbol_key:I

    sget v0, Lflyme/R$layout;->security_pay_display_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->security_pay_display_layout:I

    sget v0, Lflyme/R$layout;->shutdown_confirm_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->shutdown_confirm_view:I

    sget v0, Lflyme/R$layout;->subdisplay_fsaa_cover_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->subdisplay_fsaa_cover_layout:I

    sget v0, Lflyme/R$layout;->systemlock_lock_digit_panel_meizu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->systemlock_lock_digit_panel_meizu:I

    sget v0, Lflyme/R$layout;->systemlock_two_buttons_panel_for_lock_digit_panel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->systemlock_two_buttons_panel_for_lock_digit_panel:I

    sget v0, Lflyme/R$layout;->top_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->top_view:I

    sget v0, Lflyme/R$layout;->update_system_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->update_system_dialog:I

    sget v0, Lflyme/R$layout;->usb_install_dialog_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$layout;->usb_install_dialog_view:I

    sget v0, Lflyme/R$menu;->mz_systemlock_enter:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$menu;->mz_systemlock_enter:I

    sget v0, Lflyme/R$raw;->alarm_alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->alarm_alert:I

    sget v0, Lflyme/R$raw;->calendar_sound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->calendar_sound:I

    sget v0, Lflyme/R$raw;->email_sound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->email_sound:I

    sget v0, Lflyme/R$raw;->loaderror:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->loaderror:I

    sget v0, Lflyme/R$raw;->mms_sound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->mms_sound:I

    sget v0, Lflyme/R$raw;->mz_contact_avastar_rule:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->mz_contact_avastar_rule:I

    sget v0, Lflyme/R$raw;->mz_contact_avastar_rule_international:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->mz_contact_avastar_rule_international:I

    sget v0, Lflyme/R$raw;->nodomain:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->nodomain:I

    sget v0, Lflyme/R$raw;->notification_sound:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$raw;->notification_sound:I

    sget v0, Lflyme/R$string;->access_control_emergency_dialer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->access_control_emergency_dialer:I

    sget v0, Lflyme/R$string;->aerr_application_lowstorage:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->aerr_application_lowstorage:I

    sget v0, Lflyme/R$string;->aerr_process_lowstorage:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->aerr_process_lowstorage:I

    sget v0, Lflyme/R$string;->allow_check_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->allow_check_app:I

    sget v0, Lflyme/R$string;->allow_dialog_push:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->allow_dialog_push:I

    sget v0, Lflyme/R$string;->alwaysUse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->alwaysUse:I

    sget v0, Lflyme/R$string;->anr_activity_application:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->anr_activity_application:I

    sget v0, Lflyme/R$string;->anr_activity_process:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->anr_activity_process:I

    sget v0, Lflyme/R$string;->anr_application_process:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->anr_application_process:I

    sget v0, Lflyme/R$string;->anr_process:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->anr_process:I

    sget v0, Lflyme/R$string;->app_hidden_des:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->app_hidden_des:I

    sget v0, Lflyme/R$string;->app_hidden_not_found:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->app_hidden_not_found:I

    sget v0, Lflyme/R$string;->barringPWBlocked:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->barringPWBlocked:I

    sget v0, Lflyme/R$string;->battery_consumption_balance_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->battery_consumption_balance_title:I

    sget v0, Lflyme/R$string;->battery_consumption_performance_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->battery_consumption_performance_title:I

    sget v0, Lflyme/R$string;->bluetooth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->bluetooth:I

    sget v0, Lflyme/R$string;->bluetooth_pairing_request:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->bluetooth_pairing_request:I

    sget v0, Lflyme/R$string;->boot_alarm_permission_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->boot_alarm_permission_description:I

    sget v0, Lflyme/R$string;->boot_alarm_permission_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->boot_alarm_permission_title:I

    sget v0, Lflyme/R$string;->calendar_day_of_week:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->calendar_day_of_week:I

    sget v0, Lflyme/R$string;->call:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->call:I

    sget v0, Lflyme/R$string;->call_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->call_c:I

    sget v0, Lflyme/R$string;->call_log:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->call_log:I

    sget v0, Lflyme/R$string;->call_log_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->call_log_c:I

    sget v0, Lflyme/R$string;->camera:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->camera:I

    sget v0, Lflyme/R$string;->change_num:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->change_num:I

    sget v0, Lflyme/R$string;->children_mode_can_not_set_wallpaper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->children_mode_can_not_set_wallpaper:I

    sget v0, Lflyme/R$string;->chooseDefLauncher:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->chooseDefLauncher:I

    sget v0, Lflyme/R$string;->clckDisableSmsFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckDisableSmsFault:I

    sget v0, Lflyme/R$string;->clckDisableVoiceFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckDisableVoiceFault:I

    sget v0, Lflyme/R$string;->clckDisableVoiceFaultSmsOK:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckDisableVoiceFaultSmsOK:I

    sget v0, Lflyme/R$string;->clckDisableVoiceOKSmsFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckDisableVoiceOKSmsFault:I

    sget v0, Lflyme/R$string;->clckEnableSmsFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckEnableSmsFault:I

    sget v0, Lflyme/R$string;->clckEnableVoiceFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckEnableVoiceFault:I

    sget v0, Lflyme/R$string;->clckEnableVoiceFaultSmsOK:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckEnableVoiceFaultSmsOK:I

    sget v0, Lflyme/R$string;->clckEnableVoiceOKSmsFault:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->clckEnableVoiceOKSmsFault:I

    sget v0, Lflyme/R$string;->close:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->close:I

    sget v0, Lflyme/R$string;->config_def_theme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->config_def_theme:I

    sget v0, Lflyme/R$string;->config_default_location_provider_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->config_default_location_provider_mode:I

    sget v0, Lflyme/R$string;->confirm_access_password_tip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->confirm_access_password_tip:I

    sget v0, Lflyme/R$string;->confirm_password_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->confirm_password_error:I

    sget v0, Lflyme/R$string;->contacts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->contacts:I

    sget v0, Lflyme/R$string;->contacts_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->contacts_c:I

    sget v0, Lflyme/R$string;->copyAll:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->copyAll:I

    sget v0, Lflyme/R$string;->cover_control_path_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->cover_control_path_string:I

    sget v0, Lflyme/R$string;->d_call_log:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_call_log:I

    sget v0, Lflyme/R$string;->d_call_log_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_call_log_c:I

    sget v0, Lflyme/R$string;->d_contacts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_contacts:I

    sget v0, Lflyme/R$string;->d_contacts_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_contacts_c:I

    sget v0, Lflyme/R$string;->d_mms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_mms:I

    sget v0, Lflyme/R$string;->d_mms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_mms_c:I

    sget v0, Lflyme/R$string;->d_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_sms:I

    sget v0, Lflyme/R$string;->d_sms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->d_sms_c:I

    sget v0, Lflyme/R$string;->data_conn_only:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->data_conn_only:I

    sget v0, Lflyme/R$string;->date_time_set:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->date_time_set:I

    sget v0, Lflyme/R$string;->delete:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->delete:I

    sget v0, Lflyme/R$string;->dexopt_apps_apk:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dexopt_apps_apk:I

    sget v0, Lflyme/R$string;->dexopt_apps_apk_percent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dexopt_apps_apk_percent:I

    sget v0, Lflyme/R$string;->dexopt_apps_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dexopt_apps_title:I

    sget v0, Lflyme/R$string;->dialog_push:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dialog_push:I

    sget v0, Lflyme/R$string;->disable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->disable:I

    sget v0, Lflyme/R$string;->dlg_cancel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_cancel:I

    sget v0, Lflyme/R$string;->dlg_check_app_control_summary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_control_summary:I

    sget v0, Lflyme/R$string;->dlg_check_app_control_summary_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_control_summary_on:I

    sget v0, Lflyme/R$string;->dlg_check_app_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_message:I

    sget v0, Lflyme/R$string;->dlg_check_app_message_location:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_message_location:I

    sget v0, Lflyme/R$string;->dlg_check_app_message_off:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_message_off:I

    sget v0, Lflyme/R$string;->dlg_check_app_message_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_message_on:I

    sget v0, Lflyme/R$string;->dlg_check_app_shortcut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_check_app_shortcut:I

    sget v0, Lflyme/R$string;->dlg_ok:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_ok:I

    sget v0, Lflyme/R$string;->dlg_push_app_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->dlg_push_app_message:I

    sget v0, Lflyme/R$string;->do_not_disturb_notification_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->do_not_disturb_notification_content:I

    sget v0, Lflyme/R$string;->do_not_disturb_notification_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->do_not_disturb_notification_title:I

    sget v0, Lflyme/R$string;->download_pending:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->download_pending:I

    sget v0, Lflyme/R$string;->ellipsis:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->ellipsis:I

    sget v0, Lflyme/R$string;->enable:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->enable:I

    sget v0, Lflyme/R$string;->enable_airplane_notify:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->enable_airplane_notify:I

    sget v0, Lflyme/R$string;->enterPinWhileNotInPuk:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->enterPinWhileNotInPuk:I

    sget v0, Lflyme/R$string;->enter_password_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->enter_password_error:I

    sget v0, Lflyme/R$string;->eventTypeLunarBirthday:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->eventTypeLunarBirthday:I

    sget v0, Lflyme/R$string;->external_storage_device_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->external_storage_device_name:I

    sget v0, Lflyme/R$string;->file_protect_confirm_error_tip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->file_protect_confirm_error_tip:I

    sget v0, Lflyme/R$string;->file_protect_ensure_new_password_tip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->file_protect_ensure_new_password_tip:I

    sget v0, Lflyme/R$string;->file_protect_password_tip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->file_protect_password_tip:I

    sget v0, Lflyme/R$string;->file_protect_set_new_password_tip:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->file_protect_set_new_password_tip:I

    sget v0, Lflyme/R$string;->find_phone_app_name_find_phone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_app_name_find_phone:I

    sget v0, Lflyme/R$string;->find_phone_app_name_mzaccount:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_app_name_mzaccount:I

    sget v0, Lflyme/R$string;->find_phone_app_name_mzcloud:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_app_name_mzcloud:I

    sget v0, Lflyme/R$string;->find_phone_dialog_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_dialog_button:I

    sget v0, Lflyme/R$string;->find_phone_dialog_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_dialog_content:I

    sget v0, Lflyme/R$string;->find_phone_state_dialog_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_state_dialog_button:I

    sget v0, Lflyme/R$string;->find_phone_state_dialog_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->find_phone_state_dialog_content:I

    sget v0, Lflyme/R$string;->finish_button_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->finish_button_label:I

    sget v0, Lflyme/R$string;->forget_pwd:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->forget_pwd:I

    sget v0, Lflyme/R$string;->format_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->format_error:I

    sget v0, Lflyme/R$string;->four_g_enabled:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->four_g_enabled:I

    sget v0, Lflyme/R$string;->free_memory_btn:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->free_memory_btn:I

    sget v0, Lflyme/R$string;->gesture_control_path_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->gesture_control_path_string:I

    sget v0, Lflyme/R$string;->gesture_data_path_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->gesture_data_path_string:I

    sget v0, Lflyme/R$string;->global_action_power_restart:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->global_action_power_restart:I

    sget v0, Lflyme/R$string;->global_action_shut_down:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->global_action_shut_down:I

    sget v0, Lflyme/R$string;->global_actions_toggle_airplane_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->global_actions_toggle_airplane_mode:I

    sget v0, Lflyme/R$string;->hall_state_path_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->hall_state_path_string:I

    sget v0, Lflyme/R$string;->hour:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->hour:I

    sget v0, Lflyme/R$string;->launcher_choose_hint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->launcher_choose_hint:I

    sget v0, Lflyme/R$string;->local_number:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->local_number:I

    sget v0, Lflyme/R$string;->location:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->location:I

    sget v0, Lflyme/R$string;->location_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->location_c:I

    sget v0, Lflyme/R$string;->lock_month_day:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->lock_month_day:I

    sget v0, Lflyme/R$string;->lock_password_left_times:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->lock_password_left_times:I

    sget v0, Lflyme/R$string;->lock_week:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->lock_week:I

    sget v0, Lflyme/R$string;->lockscreen_carrier_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->lockscreen_carrier_default:I

    sget v0, Lflyme/R$string;->low_internal_storage_view_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->low_internal_storage_view_title:I

    sget v0, Lflyme/R$string;->low_storage_warning_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->low_storage_warning_message:I

    sget v0, Lflyme/R$string;->media_bad_removal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->media_bad_removal:I

    sget v0, Lflyme/R$string;->media_checking:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->media_checking:I

    sget v0, Lflyme/R$string;->media_removed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->media_removed:I

    sget v0, Lflyme/R$string;->media_shared:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->media_shared:I

    sget v0, Lflyme/R$string;->media_unknown_state:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->media_unknown_state:I

    sget v0, Lflyme/R$string;->mtp_locked_section:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mtp_locked_section:I

    sget v0, Lflyme/R$string;->mz_anr_close_or_not:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_anr_close_or_not:I

    sget v0, Lflyme/R$string;->mz_date_time_day:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_day:I

    sget v0, Lflyme/R$string;->mz_date_time_hour:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_hour:I

    sget v0, Lflyme/R$string;->mz_date_time_min:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_min:I

    sget v0, Lflyme/R$string;->mz_date_time_month:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_month:I

    sget v0, Lflyme/R$string;->mz_date_time_sec:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_sec:I

    sget v0, Lflyme/R$string;->mz_date_time_year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_date_time_year:I

    sget v0, Lflyme/R$string;->mz_drive_mode_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_drive_mode_message:I

    sget v0, Lflyme/R$string;->mz_drive_mode_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_drive_mode_title:I

    sget v0, Lflyme/R$string;->mz_font_family_button_alertdialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_font_family_button_alertdialog:I

    sget v0, Lflyme/R$string;->mz_fp_lockout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_fp_lockout:I

    sget v0, Lflyme/R$string;->mz_fp_verify_failed:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_fp_verify_failed:I

    sget v0, Lflyme/R$string;->mz_go_Refreshing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_go_Refreshing:I

    sget v0, Lflyme/R$string;->mz_is_Refreshing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_is_Refreshing:I

    sget v0, Lflyme/R$string;->mz_low_battery_upgrade_tips:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_low_battery_upgrade_tips:I

    sget v0, Lflyme/R$string;->mz_network_unavailable_hint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_network_unavailable_hint:I

    sget v0, Lflyme/R$string;->mz_notification_ongoing_pppoe_format:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_notification_ongoing_pppoe_format:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_dmy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_dmy:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_dym:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_dym:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_mdy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_mdy:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_myd:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_myd:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_ydm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_ydm:I

    sget v0, Lflyme/R$string;->mz_numeric_date_format_ymd:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_numeric_date_format_ymd:I

    sget v0, Lflyme/R$string;->mz_permdesc_networkUpgrade:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_permdesc_networkUpgrade:I

    sget v0, Lflyme/R$string;->mz_permlab_networkUpgrade:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_permlab_networkUpgrade:I

    sget v0, Lflyme/R$string;->mz_pull_refresh:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_pull_refresh:I

    sget v0, Lflyme/R$string;->mz_redo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_redo:I

    sget v0, Lflyme/R$string;->mz_resolver_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_resolver_back:I

    sget v0, Lflyme/R$string;->mz_resolver_default_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_resolver_default_app:I

    sget v0, Lflyme/R$string;->mz_resolver_grid_text_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_resolver_grid_text_more:I

    sget v0, Lflyme/R$string;->mz_share_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_share_title:I

    sget v0, Lflyme/R$string;->mz_sina_weibo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_sina_weibo:I

    sget v0, Lflyme/R$string;->mz_smart_bar_configuration_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_smart_bar_configuration_default:I

    sget v0, Lflyme/R$string;->mz_undo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_undo:I

    sget v0, Lflyme/R$string;->mz_update_battery_low:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_update_battery_low:I

    sget v0, Lflyme/R$string;->mz_upgrade_immediately:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_immediately:I

    sget v0, Lflyme/R$string;->mz_upgrade_later:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_later:I

    sget v0, Lflyme/R$string;->mz_upgrade_root_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_root_message:I

    sget v0, Lflyme/R$string;->mz_upgrade_root_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_root_title:I

    sget v0, Lflyme/R$string;->mz_upgrade_tips:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_tips:I

    sget v0, Lflyme/R$string;->mz_upgrade_tips_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_upgrade_tips_title:I

    sget v0, Lflyme/R$string;->mz_wechat_friend:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_wechat_friend:I

    sget v0, Lflyme/R$string;->mz_wechat_timeline:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_wechat_timeline:I

    sget v0, Lflyme/R$string;->mz_wif_setting_dialog_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_wif_setting_dialog_message:I

    sget v0, Lflyme/R$string;->mz_wif_setting_dialog_set:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->mz_wif_setting_dialog_set:I

    sget v0, Lflyme/R$string;->network:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->network:I

    sget v0, Lflyme/R$string;->nfc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->nfc:I

    sget v0, Lflyme/R$string;->nfc_activity_not_found_err:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->nfc_activity_not_found_err:I

    sget v0, Lflyme/R$string;->not_allow_check_app:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->not_allow_check_app:I

    sget v0, Lflyme/R$string;->not_allow_dialog_push:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->not_allow_dialog_push:I

    sget v0, Lflyme/R$string;->not_prompt_notify:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->not_prompt_notify:I

    sget v0, Lflyme/R$string;->online_intenert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->online_intenert:I

    sget v0, Lflyme/R$string;->op_camera:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_camera:I

    sget v0, Lflyme/R$string;->op_camera_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_camera_c:I

    sget v0, Lflyme/R$string;->op_getinstallpkg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_getinstallpkg:I

    sget v0, Lflyme/R$string;->op_getinstallpkg_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_getinstallpkg_c:I

    sget v0, Lflyme/R$string;->op_imei:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_imei:I

    sget v0, Lflyme/R$string;->op_imei_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_imei_c:I

    sget v0, Lflyme/R$string;->op_phone_state:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_phone_state:I

    sget v0, Lflyme/R$string;->op_phone_state_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_phone_state_c:I

    sget v0, Lflyme/R$string;->op_record_audio:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_record_audio:I

    sget v0, Lflyme/R$string;->op_record_audio_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_record_audio_c:I

    sget v0, Lflyme/R$string;->op_setting:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_setting:I

    sget v0, Lflyme/R$string;->op_setting_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_setting_c:I

    sget v0, Lflyme/R$string;->op_shortcut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_shortcut:I

    sget v0, Lflyme/R$string;->op_shortcut_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->op_shortcut_c:I

    sget v0, Lflyme/R$string;->open:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->open:I

    sget v0, Lflyme/R$string;->oper_long_46000:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46000:I

    sget v0, Lflyme/R$string;->oper_long_46001:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46001:I

    sget v0, Lflyme/R$string;->oper_long_46003:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46003:I

    sget v0, Lflyme/R$string;->oper_long_46601:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46601:I

    sget v0, Lflyme/R$string;->oper_long_46692:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46692:I

    sget v0, Lflyme/R$string;->oper_long_46697:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_46697:I

    sget v0, Lflyme/R$string;->oper_long_99998:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_99998:I

    sget v0, Lflyme/R$string;->oper_long_99999:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_long_99999:I

    sget v0, Lflyme/R$string;->oper_short_46000:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46000:I

    sget v0, Lflyme/R$string;->oper_short_46001:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46001:I

    sget v0, Lflyme/R$string;->oper_short_46003:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46003:I

    sget v0, Lflyme/R$string;->oper_short_46601:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46601:I

    sget v0, Lflyme/R$string;->oper_short_46692:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46692:I

    sget v0, Lflyme/R$string;->oper_short_46697:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_46697:I

    sget v0, Lflyme/R$string;->oper_short_99997:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_99997:I

    sget v0, Lflyme/R$string;->oper_short_99999:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->oper_short_99999:I

    sget v0, Lflyme/R$string;->pattern_a_hour_before:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_a_hour_before:I

    sget v0, Lflyme/R$string;->pattern_a_minute_before:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_a_minute_before:I

    sget v0, Lflyme/R$string;->pattern_day_month:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month:I

    sget v0, Lflyme/R$string;->pattern_day_month_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_day_month_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_day_month_year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month_year:I

    sget v0, Lflyme/R$string;->pattern_day_month_year_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month_year_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_day_month_year_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_day_month_year_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_hour_before:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_hour_before:I

    sget v0, Lflyme/R$string;->pattern_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_minute_before:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_minute_before:I

    sget v0, Lflyme/R$string;->pattern_month_day:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_month_day:I

    sget v0, Lflyme/R$string;->pattern_month_day_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_month_day_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_month_day_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_month_day_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_month_year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_month_year:I

    sget v0, Lflyme/R$string;->pattern_today:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_today:I

    sget v0, Lflyme/R$string;->pattern_week:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week:I

    sget v0, Lflyme/R$string;->pattern_week_day_month_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_day_month_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_week_day_month_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_day_month_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_week_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_week_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_week_month_day_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_month_day_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_week_month_day_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_week_month_day_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_year_month:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_year_month:I

    sget v0, Lflyme/R$string;->pattern_year_month_day:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_year_month_day:I

    sget v0, Lflyme/R$string;->pattern_year_month_day_hour_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_year_month_day_hour_minute:I

    sget v0, Lflyme/R$string;->pattern_year_month_day_hour_minute_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_year_month_day_hour_minute_12:I

    sget v0, Lflyme/R$string;->pattern_yesterday:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pattern_yesterday:I

    sget v0, Lflyme/R$string;->perm_alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->perm_alert:I

    sget v0, Lflyme/R$string;->perm_aotulunch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->perm_aotulunch:I

    sget v0, Lflyme/R$string;->perm_notification:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->perm_notification:I

    sget v0, Lflyme/R$string;->permdesc_add_global_unlock_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_add_global_unlock_file:I

    sget v0, Lflyme/R$string;->permdesc_backupAccounts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_backupAccounts:I

    sget v0, Lflyme/R$string;->permdesc_forceKillProcess:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_forceKillProcess:I

    sget v0, Lflyme/R$string;->permdesc_force_clear_when_granted_expired:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_force_clear_when_granted_expired:I

    sget v0, Lflyme/R$string;->permdesc_force_grant_access_protect_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_force_grant_access_protect_file:I

    sget v0, Lflyme/R$string;->permdesc_getAppOpsStats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_getAppOpsStats:I

    sget v0, Lflyme/R$string;->permdesc_modify_protect_file_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_modify_protect_file_list:I

    sget v0, Lflyme/R$string;->permdesc_read_protect_file_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_read_protect_file_list:I

    sget v0, Lflyme/R$string;->permdesc_readusagestats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_readusagestats:I

    sget v0, Lflyme/R$string;->permdesc_recognize_fingerprint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_recognize_fingerprint:I

    sget v0, Lflyme/R$string;->permdesc_register_fingerprint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_register_fingerprint:I

    sget v0, Lflyme/R$string;->permdesc_request_grant_access_protect_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_request_grant_access_protect_file:I

    sget v0, Lflyme/R$string;->permdesc_rootRecoveryState:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_rootRecoveryState:I

    sget v0, Lflyme/R$string;->permdesc_updateAppOpsStats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_updateAppOpsStats:I

    sget v0, Lflyme/R$string;->permdesc_writeusagestats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permdesc_writeusagestats:I

    sget v0, Lflyme/R$string;->permlab_add_global_unlock_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_add_global_unlock_file:I

    sget v0, Lflyme/R$string;->permlab_backupAccounts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_backupAccounts:I

    sget v0, Lflyme/R$string;->permlab_forceKillProcess:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_forceKillProcess:I

    sget v0, Lflyme/R$string;->permlab_force_grant_access_protect_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_force_grant_access_protect_file:I

    sget v0, Lflyme/R$string;->permlab_getAppOpsStats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_getAppOpsStats:I

    sget v0, Lflyme/R$string;->permlab_modify_protect_file_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_modify_protect_file_list:I

    sget v0, Lflyme/R$string;->permlab_read_protect_file_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_read_protect_file_list:I

    sget v0, Lflyme/R$string;->permlab_readusagestats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_readusagestats:I

    sget v0, Lflyme/R$string;->permlab_recognize_fingerprint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_recognize_fingerprint:I

    sget v0, Lflyme/R$string;->permlab_register_fingerprint:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_register_fingerprint:I

    sget v0, Lflyme/R$string;->permlab_request_grant_access_protect_file:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_request_grant_access_protect_file:I

    sget v0, Lflyme/R$string;->permlab_rootRecoveryState:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_rootRecoveryState:I

    sget v0, Lflyme/R$string;->permlab_updateAppOpsStats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_updateAppOpsStats:I

    sget v0, Lflyme/R$string;->permlab_writeusagestats:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->permlab_writeusagestats:I

    sget v0, Lflyme/R$string;->phoneTypeFaxWork:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->phoneTypeFaxWork:I

    sget v0, Lflyme/R$string;->pinNotEnableError:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pinNotEnableError:I

    sget v0, Lflyme/R$string;->pppoe_click_to_disconnect:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->pppoe_click_to_disconnect:I

    sget v0, Lflyme/R$string;->progress_erasing:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->progress_erasing:I

    sget v0, Lflyme/R$string;->progress_unmounting:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->progress_unmounting:I

    sget v0, Lflyme/R$string;->prompt_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->prompt_title:I

    sget v0, Lflyme/R$string;->r_mms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->r_mms:I

    sget v0, Lflyme/R$string;->r_mms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->r_mms_c:I

    sget v0, Lflyme/R$string;->r_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->r_sms:I

    sget v0, Lflyme/R$string;->r_sms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->r_sms_c:I

    sget v0, Lflyme/R$string;->read_write_calibration_values_permission_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->read_write_calibration_values_permission_title:I

    sget v0, Lflyme/R$string;->recommend_open_mstore_faile:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recommend_open_mstore_faile:I

    sget v0, Lflyme/R$string;->recommend_recommend:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recommend_recommend:I

    sget v0, Lflyme/R$string;->recommend_search_gooleplay:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recommend_search_gooleplay:I

    sget v0, Lflyme/R$string;->recommend_search_mstore:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recommend_search_mstore:I

    sget v0, Lflyme/R$string;->recommend_switch_power_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recommend_switch_power_mode:I

    sget v0, Lflyme/R$string;->recordaudio_local:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recordaudio_local:I

    sget v0, Lflyme/R$string;->recordaudio_phone:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->recordaudio_phone:I

    sget v0, Lflyme/R$string;->remember_me:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->remember_me:I

    sget v0, Lflyme/R$string;->requestNotSupported:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->requestNotSupported:I

    sget v0, Lflyme/R$string;->ringtone_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->ringtone_default:I

    sget v0, Lflyme/R$string;->ringtone_silent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->ringtone_silent:I

    sget v0, Lflyme/R$string;->ringtone_unknown:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->ringtone_unknown:I

    sget v0, Lflyme/R$string;->s_mms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->s_mms:I

    sget v0, Lflyme/R$string;->s_mms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->s_mms_c:I

    sget v0, Lflyme/R$string;->s_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->s_sms:I

    sget v0, Lflyme/R$string;->s_sms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->s_sms_c:I

    sget v0, Lflyme/R$string;->security_kb_back:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_kb_back:I

    sget v0, Lflyme/R$string;->security_kb_number:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_kb_number:I

    sget v0, Lflyme/R$string;->security_kb_symbol:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_kb_symbol:I

    sget v0, Lflyme/R$string;->security_kb_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_kb_title:I

    sget v0, Lflyme/R$string;->security_pay_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_button_text:I

    sget v0, Lflyme/R$string;->security_pay_debug_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_debug_text:I

    sget v0, Lflyme/R$string;->security_pay_event_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_event_text:I

    sget v0, Lflyme/R$string;->security_pay_icon_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_icon_text:I

    sget v0, Lflyme/R$string;->security_pay_notification_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_notification_text:I

    sget v0, Lflyme/R$string;->security_pay_password_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_password_text:I

    sget v0, Lflyme/R$string;->security_pay_process_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_process_text:I

    sget v0, Lflyme/R$string;->security_pay_show_detail_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_show_detail_text:I

    sget v0, Lflyme/R$string;->security_pay_sms_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_sms_text:I

    sget v0, Lflyme/R$string;->security_pay_surface_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_surface_text:I

    sget v0, Lflyme/R$string;->security_pay_title_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->security_pay_title_text:I

    sget v0, Lflyme/R$string;->select:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->select:I

    sget v0, Lflyme/R$string;->set_bluetooth_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_bluetooth_on:I

    sget v0, Lflyme/R$string;->set_bluetooth_on_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_bluetooth_on_c:I

    sget v0, Lflyme/R$string;->set_gprs_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_gprs_on:I

    sget v0, Lflyme/R$string;->set_gprs_on_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_gprs_on_c:I

    sget v0, Lflyme/R$string;->set_wifi_on:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_wifi_on:I

    sget v0, Lflyme/R$string;->set_wifi_on_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->set_wifi_on_c:I

    sget v0, Lflyme/R$string;->share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->share:I

    sget v0, Lflyme/R$string;->socialProfileTypeCustom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->socialProfileTypeCustom:I

    sget v0, Lflyme/R$string;->socialProfileTypeOther:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->socialProfileTypeOther:I

    sget v0, Lflyme/R$string;->socialProfileTypeSinaWeibo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->socialProfileTypeSinaWeibo:I

    sget v0, Lflyme/R$string;->specail_number_anbang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_anbang:I

    sget v0, Lflyme/R$string;->specail_number_dadi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_dadi:I

    sget v0, Lflyme/R$string;->specail_number_debon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_debon:I

    sget v0, Lflyme/R$string;->specail_number_dhl:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_dhl:I

    sget v0, Lflyme/R$string;->specail_number_dianli:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_dianli:I

    sget v0, Lflyme/R$string;->specail_number_dianxin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_dianxin:I

    sget v0, Lflyme/R$string;->specail_number_dishui:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_dishui:I

    sget v0, Lflyme/R$string;->specail_number_doubang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_doubang:I

    sget v0, Lflyme/R$string;->specail_number_ems:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_ems:I

    sget v0, Lflyme/R$string;->specail_number_federal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_federal:I

    sget v0, Lflyme/R$string;->specail_number_gongshang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_gongshang:I

    sget v0, Lflyme/R$string;->specail_number_gongyi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_gongyi:I

    sget v0, Lflyme/R$string;->specail_number_guangda:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_guangda:I

    sget v0, Lflyme/R$string;->specail_number_guangfazhan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_guangfazhan:I

    sget v0, Lflyme/R$string;->specail_number_hezhong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_hezhong:I

    sget v0, Lflyme/R$string;->specail_number_huaan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_huaan:I

    sget v0, Lflyme/R$string;->specail_number_huanbao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_huanbao:I

    sget v0, Lflyme/R$string;->specail_number_huatai:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_huatai:I

    sget v0, Lflyme/R$string;->specail_number_huaxia:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_huaxia:I

    sget v0, Lflyme/R$string;->specail_number_jiage:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_jiage:I

    sget v0, Lflyme/R$string;->specail_number_jianbao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_jianbao:I

    sget v0, Lflyme/R$string;->specail_number_jianshe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_jianshe:I

    sget v0, Lflyme/R$string;->specail_number_jiaotong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_jiaotong:I

    sget v0, Lflyme/R$string;->specail_number_jubao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_jubao:I

    sget v0, Lflyme/R$string;->specail_number_laodong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_laodong:I

    sget v0, Lflyme/R$string;->specail_number_lianhe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_lianhe:I

    sget v0, Lflyme/R$string;->specail_number_liantong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_liantong:I

    sget v0, Lflyme/R$string;->specail_number_meizu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_meizu:I

    sget v0, Lflyme/R$string;->specail_number_minsheng:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_minsheng:I

    sget v0, Lflyme/R$string;->specail_number_nongye:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_nongye:I

    sget v0, Lflyme/R$string;->specail_number_pinganbaoxian:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_pinganbaoxian:I

    sget v0, Lflyme/R$string;->specail_number_pingancaibao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_pingancaibao:I

    sget v0, Lflyme/R$string;->specail_number_pudong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_pudong:I

    sget v0, Lflyme/R$string;->specail_number_quanyi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_quanyi:I

    sget v0, Lflyme/R$string;->specail_number_renbao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_renbao:I

    sget v0, Lflyme/R$string;->specail_number_renbaogufeng:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_renbaogufeng:I

    sget v0, Lflyme/R$string;->specail_number_renshou:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_renshou:I

    sget v0, Lflyme/R$string;->specail_number_shenfazhan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_shenfazhan:I

    sget v0, Lflyme/R$string;->specail_number_shunfeng:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_shunfeng:I

    sget v0, Lflyme/R$string;->specail_number_sifa:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_sifa:I

    sget v0, Lflyme/R$string;->specail_number_taibao:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_taibao:I

    sget v0, Lflyme/R$string;->specail_number_taikang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_taikang:I

    sget v0, Lflyme/R$string;->specail_number_tianan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_tianan:I

    sget v0, Lflyme/R$string;->specail_number_tianqi:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_tianqi:I

    sget v0, Lflyme/R$string;->specail_number_tietong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_tietong:I

    sget v0, Lflyme/R$string;->specail_number_tnt:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_tnt:I

    sget v0, Lflyme/R$string;->specail_number_ups:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_ups:I

    sget v0, Lflyme/R$string;->specail_number_xiaofeizhe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_xiaofeizhe:I

    sget v0, Lflyme/R$string;->specail_number_xingye:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_xingye:I

    sget v0, Lflyme/R$string;->specail_number_xinhua:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_xinhua:I

    sget v0, Lflyme/R$string;->specail_number_yangguang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_yangguang:I

    sget v0, Lflyme/R$string;->specail_number_yidong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_yidong:I

    sget v0, Lflyme/R$string;->specail_number_yidongfuwu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_yidongfuwu:I

    sget v0, Lflyme/R$string;->specail_number_yinlian:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_yinlian:I

    sget v0, Lflyme/R$string;->specail_number_yongan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_yongan:I

    sget v0, Lflyme/R$string;->specail_number_youzheng:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_youzheng:I

    sget v0, Lflyme/R$string;->specail_number_zaijisong:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zaijisong:I

    sget v0, Lflyme/R$string;->specail_number_zhaoshang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zhaoshang:I

    sget v0, Lflyme/R$string;->specail_number_zhaoshangbank:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zhaoshangbank:I

    sget v0, Lflyme/R$string;->specail_number_zhiliang:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zhiliang:I

    sget v0, Lflyme/R$string;->specail_number_zhongguo:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zhongguo:I

    sget v0, Lflyme/R$string;->specail_number_zhongxin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->specail_number_zhongxin:I

    sget v0, Lflyme/R$string;->storage_sd_card:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->storage_sd_card:I

    sget v0, Lflyme/R$string;->system_booting:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->system_booting:I

    sget v0, Lflyme/R$string;->tethered_notification_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_message:I

    sget v0, Lflyme/R$string;->tethered_notification_message_devices:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_message_devices:I

    sget v0, Lflyme/R$string;->tethered_notification_message_devices_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_message_devices_title:I

    sget v0, Lflyme/R$string;->tethered_notification_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_title:I

    sget v0, Lflyme/R$string;->tethered_notification_title_devices:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_title_devices:I

    sget v0, Lflyme/R$string;->tethered_notification_title_one_device:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->tethered_notification_title_one_device:I

    sget v0, Lflyme/R$string;->top_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->top_message:I

    sget v0, Lflyme/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    sget v0, Lflyme/R$string;->upgrade_system_percent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->upgrade_system_percent:I

    sget v0, Lflyme/R$string;->url_warning_messgae:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->url_warning_messgae:I

    sget v0, Lflyme/R$string;->url_warning_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->url_warning_title:I

    sget v0, Lflyme/R$string;->usb_cd_installer_notification_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_cd_installer_notification_title:I

    sget v0, Lflyme/R$string;->usb_charging_notification_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_charging_notification_title:I

    sget v0, Lflyme/R$string;->usb_install_dialog_allow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_install_dialog_allow:I

    sget v0, Lflyme/R$string;->usb_install_dialog_deny:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_install_dialog_deny:I

    sget v0, Lflyme/R$string;->usb_install_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_install_dialog_title:I

    sget v0, Lflyme/R$string;->usb_mtp_summary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_mtp_summary:I

    sget v0, Lflyme/R$string;->usb_ptp_summary:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usb_ptp_summary:I

    sget v0, Lflyme/R$string;->usbaudio_subtitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usbaudio_subtitle:I

    sget v0, Lflyme/R$string;->usbaudio_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->usbaudio_title:I

    sget v0, Lflyme/R$string;->voice_text_normal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->voice_text_normal:I

    sget v0, Lflyme/R$string;->voice_text_over:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->voice_text_over:I

    sget v0, Lflyme/R$string;->voice_text_press:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->voice_text_press:I

    sget v0, Lflyme/R$string;->voice_text_remain:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->voice_text_remain:I

    sget v0, Lflyme/R$string;->vpn_can_not_load_credential:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->vpn_can_not_load_credential:I

    sget v0, Lflyme/R$string;->vpn_no_network:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->vpn_no_network:I

    sget v0, Lflyme/R$string;->w_call_log:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_call_log:I

    sget v0, Lflyme/R$string;->w_call_log_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_call_log_c:I

    sget v0, Lflyme/R$string;->w_contacts:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_contacts:I

    sget v0, Lflyme/R$string;->w_contacts_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_contacts_c:I

    sget v0, Lflyme/R$string;->w_mms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_mms:I

    sget v0, Lflyme/R$string;->w_mms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_mms_c:I

    sget v0, Lflyme/R$string;->w_sms:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_sms:I

    sget v0, Lflyme/R$string;->w_sms_c:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->w_sms_c:I

    sget v0, Lflyme/R$string;->wifi_display_notification_connected_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->wifi_display_notification_connected_title:I

    sget v0, Lflyme/R$string;->wifi_display_notification_disconnect:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->wifi_display_notification_disconnect:I

    sget v0, Lflyme/R$string;->wifi_share_start:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->wifi_share_start:I

    sget v0, Lflyme/R$string;->wifi_share_stop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->wifi_share_stop:I

    sget v0, Lflyme/R$string;->wlan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$string;->wlan:I

    sget v0, Lflyme/R$style;->AlertDialog_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->AlertDialog_Flyme_Light:I

    sget v0, Lflyme/R$style;->Animation_Activity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Activity:I

    sget v0, Lflyme/R$style;->Animation_CalculatorBigToMiddle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_CalculatorBigToMiddle:I

    sget v0, Lflyme/R$style;->Animation_CalculatorBigToSmall:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_CalculatorBigToSmall:I

    sget v0, Lflyme/R$style;->Animation_CalculatorWindowEnterExit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_CalculatorWindowEnterExit:I

    sget v0, Lflyme/R$style;->Animation_Flyme_Dialog_Alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Flyme_Dialog_Alert:I

    sget v0, Lflyme/R$style;->Animation_Flyme_Dialog_ShowAtBottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Flyme_Dialog_ShowAtBottom:I

    sget v0, Lflyme/R$style;->Animation_Flyme_MzToast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Flyme_MzToast:I

    sget v0, Lflyme/R$style;->Animation_Flyme_Overflow_Popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Flyme_Overflow_Popup:I

    sget v0, Lflyme/R$style;->Animation_InputMethod:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_InputMethod:I

    sget v0, Lflyme/R$style;->Animation_Magnifier:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_Magnifier:I

    sget v0, Lflyme/R$style;->Animation_RecentApplications:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Animation_RecentApplications:I

    sget v0, Lflyme/R$style;->Base_Theme_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Base_Theme_Flyme_Light:I

    sget v0, Lflyme/R$style;->Base_Theme_Flyme_Light_Dialog_Alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Base_Theme_Flyme_Light_Dialog_Alert:I

    sget v0, Lflyme/R$style;->Base_V17_Flyme_Light_Dialog_Alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Base_V17_Flyme_Light_Dialog_Alert:I

    sget v0, Lflyme/R$style;->Base_V17_Theme_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Base_V17_Theme_Flyme_Light:I

    sget v0, Lflyme/R$style;->Base_Widget_Flyme_Light_ListPopupWindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Base_Widget_Flyme_Light_ListPopupWindow:I

    sget v0, Lflyme/R$style;->DialogWindowTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->DialogWindowTitle:I

    sget v0, Lflyme/R$style;->DialogWindowTitle_Flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->DialogWindowTitle_Flyme:I

    sget v0, Lflyme/R$style;->DialogWindowTitle_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->DialogWindowTitle_Flyme_Light:I

    sget v0, Lflyme/R$style;->EditPhoneNumberPreference:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->EditPhoneNumberPreference:I

    sget v0, Lflyme/R$style;->Flyme_Light_ButtonBar_AlertDialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Flyme_Light_ButtonBar_AlertDialog:I

    sget v0, Lflyme/R$style;->GlobalActionsDialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->GlobalActionsDialog:I

    sget v0, Lflyme/R$style;->MzShareAnimationActivity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->MzShareAnimationActivity:I

    sget v0, Lflyme/R$style;->Preference:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference:I

    sget v0, Lflyme/R$style;->Preference_Flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme:I

    sget v0, Lflyme/R$style;->Preference_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme_Light:I

    sget v0, Lflyme/R$style;->Preference_Flyme_Light_CheckBox:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme_Light_CheckBox:I

    sget v0, Lflyme/R$style;->Preference_Flyme_Light_DialogPreference:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme_Light_DialogPreference:I

    sget v0, Lflyme/R$style;->Preference_Flyme_Light_PreferenceCategory:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme_Light_PreferenceCategory:I

    sget v0, Lflyme/R$style;->Preference_Flyme_Light_PreferenceScreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Preference_Flyme_Light_PreferenceScreen:I

    sget v0, Lflyme/R$style;->PreferenceScreen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->PreferenceScreen:I

    sget v0, Lflyme/R$style;->PreferenceScreen_Flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->PreferenceScreen_Flyme:I

    sget v0, Lflyme/R$style;->PreferenceScreen_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->PreferenceScreen_Flyme_Light:I

    sget v0, Lflyme/R$style;->ResolverAnimationActivity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->ResolverAnimationActivity:I

    sget v0, Lflyme/R$style;->TextAppearance_DeviceDefault_Light_Widget_PopupMenu_Large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_DeviceDefault_Light_Widget_PopupMenu_Large:I

    sget v0, Lflyme/R$style;->TextAppearance_EditEvent_Small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_EditEvent_Small:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_ActionTextAppearance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_ActionTextAppearance:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_TitleTextAppearance:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_TitleTextAppearance:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_TitleTextAppearance_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_ContentToastLayout_TitleTextAppearance_Light:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Large:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Large_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Large_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_AlertDialog_HasListTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_AlertDialog_HasListTitle:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Content:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_DialogWindowTitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_DialogWindowTitle:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Large:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Large_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Large_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_AlertDialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_AlertDialog:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Bold:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Bold:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Huge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Huge:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_SuperLarge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Medium_SuperLarge:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_AlertDialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_AlertDialog:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_Huge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_Huge:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_SuperLarge:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Small_SuperLarge:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_StatusBar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_StatusBar:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Widget_PopupMenu_Large:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Light_Widget_PopupMenu_Large:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Medium:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Medium:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Medium_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Medium_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Small:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Small:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Small_Inverse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Small_Inverse:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Menu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Menu:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Subtitle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Subtitle:I

    sget v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_Flyme_Widget_ActionBar_Title:I

    sget v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent:I

    sget v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Info:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Info:I

    sget v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Line2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Line2:I

    sget v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Time:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Time:I

    sget v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->TextAppearance_StatusBar_EventContent_Title:I

    sget v0, Lflyme/R$style;->Theme_Flyme:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Dialog:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Dialog_NoFrame:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Dialog_NoFrame:I

    sget v0, Lflyme/R$style;->Theme_Flyme_InputMethod:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_InputMethod:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Light:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Light_CompactMenu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Light_CompactMenu:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Light_Dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Light_Dialog:I

    sget v0, Lflyme/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lflyme/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    invoke-static {p0}, Lflyme/R;->onResourcesLoaded6(I)V

    return-void
.end method

.method private static onResourcesLoaded6(I)V
    .locals 7
    .param p0, "packageId"    # I

    .prologue
    const/high16 v6, 0x1000000

    const/high16 v5, -0x1000000

    const v4, 0xffffff

    sget v1, Lflyme/R$style;->Theme_Flyme_Light_Dialog_Alert_InputMethod:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Light_Dialog_Alert_InputMethod:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Light_Dialog_NoActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Light_Dialog_NoActionBar:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Light_NoActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Light_NoActionBar:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Light_NoActionBar_Fullscreen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Light_NoActionBar_Fullscreen:I

    sget v1, Lflyme/R$style;->Theme_Flyme_NoActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_NoActionBar:I

    sget v1, Lflyme/R$style;->Theme_Flyme_NoActionBar_Fullscreen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_NoActionBar_Fullscreen:I

    sget v1, Lflyme/R$style;->Theme_Flyme_NoTitleBar_Fullscreen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_NoTitleBar_Fullscreen:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Recommend:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Recommend:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Resolver:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Resolver:I

    sget v1, Lflyme/R$style;->Theme_Flyme_V7Overlay_Light:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_V7Overlay_Light:I

    sget v1, Lflyme/R$style;->Theme_Flyme_V7Overlay_Light_Dialog_Alert:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_V7Overlay_Light_Dialog_Alert:I

    sget v1, Lflyme/R$style;->Theme_Flyme_Light_AccessControl:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Theme_Flyme_Light_AccessControl:I

    sget v1, Lflyme/R$style;->Widget_AbsListView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_AbsListView:I

    sget v1, Lflyme/R$style;->Widget_ActionButton_MzBack:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_ActionButton_MzBack:I

    sget v1, Lflyme/R$style;->Widget_ActionButton_MzBack_Light:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_ActionButton_MzBack_Light:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_CompoundButton_CheckButtonlessMultiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_CompoundButton_CheckButtonlessMultiple:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_Button_Meizu:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_Button_Meizu:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_CheckedTextView_MultiChoice:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_CheckedTextView_MultiChoice:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_CheckedTextView_SingleChoice:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_CheckedTextView_SingleChoice:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_EditText_Dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_EditText_Dialog:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_ListView_Meizu:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_ListView_Meizu:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_ListView_Meizu_Partition:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_ListView_Meizu_Partition:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_MzPickerLayout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_MzPickerLayout:I

    sget v1, Lflyme/R$style;->Widget_DeviceDefault_Light_SeekBar_White:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_DeviceDefault_Light_SeekBar_White:I

    sget v1, Lflyme/R$style;->Widget_EditTextEx:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_EditTextEx:I

    sget v1, Lflyme/R$style;->Widget_Flyme_ActionButton_MzBack:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_ActionButton_MzBack:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Button_ButtonBar_AlertDialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Button_ButtonBar_AlertDialog:I

    sget v1, Lflyme/R$style;->Widget_Flyme_ContentToastLayout_Dark:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_ContentToastLayout_Dark:I

    sget v1, Lflyme/R$style;->Widget_Flyme_ContentToastLayout_Light:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_ContentToastLayout_Light:I

    sget v1, Lflyme/R$style;->Widget_Flyme_EditText_Dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_EditText_Dialog:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Large_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Desc_Normal_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView_Multiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView_Multiple:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView_Single:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_HeadImageView_Single:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout_Multiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout_Multiple:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout_Single:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_TextContentLinearLayout_Single:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Title_Multiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Title_Multiple:I

    sget v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Title_Single:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_HeadImageList_Title_Single:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Large_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Normal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Normal_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Desc_Normal_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Icon_Small:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout_Multiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout_Multiple:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout_Single:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_TextContentLinearLayout_Single:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Title_Multiple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Title_Multiple:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconList_Title_Single:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconList_Title_Single:I

    sget v1, Lflyme/R$style;->Widget_Flyme_IconeList_Desc_Normal_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_IconeList_Desc_Normal_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_Solid:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_Solid:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabText:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabText:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionBar_TabView:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton_MzBack:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton_MzBack:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton_Overflow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionButton_Overflow:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ActionMode:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ActionMode:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_AutoCompleteTextView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_AutoCompleteTextView:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Button:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_AlertDialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_AlertDialog:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_Small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_Small:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_Small_Dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Button_Borderless_Small_Dialog:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_CheckedTextView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_CheckedTextView:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_CompoundButton_CheckBox:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_CompoundButton_CheckBox:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_CompoundButton_RadioButton:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_CompoundButton_RadioButton:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Clear_Icon_Black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Clear_Icon_Black:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Clear_Icon_White:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Clear_Icon_White:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Search_Icon_Black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Search_Icon_Black:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Search_Icon_White:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Search_Icon_White:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Voice_Icon_Black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Voice_Icon_Black:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Voice_Icon_White:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_EditText_Voice_Icon_White:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ListPopupWindow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ListPopupWindow:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ListSeparator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ListSeparator:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ListView_DropDown:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ListView_DropDown:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_PopupMenu:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_PopupMenu:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_PopupMenu_Overflow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_PopupMenu_Overflow:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_PopupWindow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_PopupWindow:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Big:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Big:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_ActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_ActionBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_BootAnim:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_BootAnim:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_BootAnimSilence:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_BootAnimSilence:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_Notification:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Horizontal_Notification:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_ProgressBar_Small:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_SeekBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_SeekBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner_DropDown:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner_DropDown:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner_DropDown_ActionBar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_Spinner_DropDown_ActionBar:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_ActionBar_Title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_ActionBar_Title:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Large_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Large_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Desc_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Desc_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Desc_Normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Desc_Normal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Link:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Link:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_List_Title:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Little:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Little:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Little_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Little_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Medium_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Medium_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Mini:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Mini:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Mini_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Mini_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Normal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Normal_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Normal_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Huge:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Huge:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Paragraph_Small:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Small:I

    sget v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Small_Medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_Light_TextView_Small_Medium:I

    sget v1, Lflyme/R$style;->Widget_Flyme_ListView_DropDown:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_ListView_DropDown:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_ContainerLinearLayout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_ContainerLinearLayout:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Large_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal_AdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal_AdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal_NoAdjoinTitle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Desc_Normal_NoAdjoinTitle:I

    sget v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_MultipleList_Title:I

    sget v1, Lflyme/R$style;->Widget_Flyme_SingleList:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_SingleList:I

    sget v1, Lflyme/R$style;->Widget_Flyme_SingleList_ContainerRelativeLayout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_SingleList_ContainerRelativeLayout:I

    sget v1, Lflyme/R$style;->Widget_Flyme_SingleList_Title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Flyme_SingleList_Title:I

    sget v1, Lflyme/R$style;->Widget_Holo_ActionButton_MzBack:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Holo_ActionButton_MzBack:I

    sget v1, Lflyme/R$style;->Widget_Holo_Light_ActionButton_MzBack:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Holo_Light_ActionButton_MzBack:I

    sget v1, Lflyme/R$style;->Widget_HorizontalScrollView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_HorizontalScrollView:I

    sget v1, Lflyme/R$style;->Widget_LockPasswordView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_LockPasswordView:I

    sget v1, Lflyme/R$style;->Widget_Material_Light_PopupMenu_Overflow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_Material_Light_PopupMenu_Overflow:I

    sget v1, Lflyme/R$style;->Widget_StaggeredGridView:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->Widget_StaggeredGridView:I

    sget v1, Lflyme/R$style;->borderlessButtonStyle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$style;->borderlessButtonStyle:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lflyme/R$styleable;->CircleProgressBar:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lflyme/R$styleable;->CircleProgressBar:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_0

    sget-object v1, Lflyme/R$styleable;->CircleProgressBar:[I

    sget-object v2, Lflyme/R$styleable;->CircleProgressBar:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lflyme/R$styleable;->ComboAnimation:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lflyme/R$styleable;->ComboAnimation:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_2

    sget-object v1, Lflyme/R$styleable;->ComboAnimation:[I

    sget-object v2, Lflyme/R$styleable;->ComboAnimation:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lflyme/R$styleable;->DragSortListView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lflyme/R$styleable;->DragSortListView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_4

    sget-object v1, Lflyme/R$styleable;->DragSortListView:[I

    sget-object v2, Lflyme/R$styleable;->DragSortListView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lflyme/R$styleable;->EditPhoneNumberPreference:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    sget-object v1, Lflyme/R$styleable;->EditPhoneNumberPreference:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_6

    sget-object v1, Lflyme/R$styleable;->EditPhoneNumberPreference:[I

    sget-object v2, Lflyme/R$styleable;->EditPhoneNumberPreference:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_4
    sget-object v1, Lflyme/R$styleable;->EditTextEx:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9

    sget-object v1, Lflyme/R$styleable;->EditTextEx:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_8

    sget-object v1, Lflyme/R$styleable;->EditTextEx:[I

    sget-object v2, Lflyme/R$styleable;->EditTextEx:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_5
    sget-object v1, Lflyme/R$styleable;->KeyBackButton:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    sget-object v1, Lflyme/R$styleable;->KeyBackButton:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_a

    sget-object v1, Lflyme/R$styleable;->KeyBackButton:[I

    sget-object v2, Lflyme/R$styleable;->KeyBackButton:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lflyme/R$styleable;->ListPreference:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d

    sget-object v1, Lflyme/R$styleable;->ListPreference:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_c

    sget-object v1, Lflyme/R$styleable;->ListPreference:[I

    sget-object v2, Lflyme/R$styleable;->ListPreference:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lflyme/R$styleable;->ListView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    sget-object v1, Lflyme/R$styleable;->ListView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_e

    sget-object v1, Lflyme/R$styleable;->ListView:[I

    sget-object v2, Lflyme/R$styleable;->ListView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_8
    sget-object v1, Lflyme/R$styleable;->LockPasswordView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    sget-object v1, Lflyme/R$styleable;->LockPasswordView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_10

    sget-object v1, Lflyme/R$styleable;->LockPasswordView:[I

    sget-object v2, Lflyme/R$styleable;->LockPasswordView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_9
    sget-object v1, Lflyme/R$styleable;->MZTheme:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    sget-object v1, Lflyme/R$styleable;->MZTheme:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_12

    sget-object v1, Lflyme/R$styleable;->MZTheme:[I

    sget-object v2, Lflyme/R$styleable;->MZTheme:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_a
    sget-object v1, Lflyme/R$styleable;->SmileView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    sget-object v1, Lflyme/R$styleable;->SmileView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_14

    sget-object v1, Lflyme/R$styleable;->SmileView:[I

    sget-object v2, Lflyme/R$styleable;->SmileView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_b
    sget-object v1, Lflyme/R$styleable;->Spinner:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    sget-object v1, Lflyme/R$styleable;->Spinner:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_16

    sget-object v1, Lflyme/R$styleable;->Spinner:[I

    sget-object v2, Lflyme/R$styleable;->Spinner:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lflyme/R$styleable;->StaggeredGridView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_19

    sget-object v1, Lflyme/R$styleable;->StaggeredGridView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_18

    sget-object v1, Lflyme/R$styleable;->StaggeredGridView:[I

    sget-object v2, Lflyme/R$styleable;->StaggeredGridView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_d
    sget-object v1, Lflyme/R$styleable;->Switch:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    sget-object v1, Lflyme/R$styleable;->Switch:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_1a

    sget-object v1, Lflyme/R$styleable;->Switch:[I

    sget-object v2, Lflyme/R$styleable;->Switch:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lflyme/R$styleable;->SystemLockView:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    sget-object v1, Lflyme/R$styleable;->SystemLockView:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_1c

    sget-object v1, Lflyme/R$styleable;->SystemLockView:[I

    sget-object v2, Lflyme/R$styleable;->SystemLockView:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    const/4 v0, 0x0

    :goto_f
    sget-object v1, Lflyme/R$styleable;->Theme:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    sget-object v1, Lflyme/R$styleable;->Theme:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_1e

    sget-object v1, Lflyme/R$styleable;->Theme:[I

    sget-object v2, Lflyme/R$styleable;->Theme:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_10
    sget-object v1, Lflyme/R$styleable;->ThemeDeviceDefault:[I

    array-length v1, v1

    if-ge v0, v1, :cond_21

    sget-object v1, Lflyme/R$styleable;->ThemeDeviceDefault:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_20

    sget-object v1, Lflyme/R$styleable;->ThemeDeviceDefault:[I

    sget-object v2, Lflyme/R$styleable;->ThemeDeviceDefault:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    :goto_11
    sget-object v1, Lflyme/R$styleable;->ValueArrayInterpolator:[I

    array-length v1, v1

    if-ge v0, v1, :cond_23

    sget-object v1, Lflyme/R$styleable;->ValueArrayInterpolator:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_22

    sget-object v1, Lflyme/R$styleable;->ValueArrayInterpolator:[I

    sget-object v2, Lflyme/R$styleable;->ValueArrayInterpolator:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    const/4 v0, 0x0

    :goto_12
    sget-object v1, Lflyme/R$styleable;->mzContentToastLayout:[I

    array-length v1, v1

    if-ge v0, v1, :cond_25

    sget-object v1, Lflyme/R$styleable;->mzContentToastLayout:[I

    aget v1, v1, v0

    and-int/2addr v1, v5

    if-eq v1, v6, :cond_24

    sget-object v1, Lflyme/R$styleable;->mzContentToastLayout:[I

    sget-object v2, Lflyme/R$styleable;->mzContentToastLayout:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_25
    sget v1, Lflyme/R$xml;->operators:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lflyme/R$xml;->operators:I

    return-void
.end method
