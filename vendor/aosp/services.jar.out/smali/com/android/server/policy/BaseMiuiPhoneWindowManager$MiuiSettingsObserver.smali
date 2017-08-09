.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "hide_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "volumekey_launch_camera"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "auto_test_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "single_key_use_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "key_bank_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "key_trans_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "key_long_press_volume_down"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screen_key_press_app_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "vr_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "gesture_wakeup"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 13
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v7, "hide_nav_bar"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v5

    .local v2, "hideNavBar":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    if-eq v7, v2, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-boolean v2, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavBar()V

    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "trackball_wake_screen"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v7, v5

    :goto_1
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "volumekey_wake_screen"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v7, v5

    :goto_2
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "volumekey_launch_camera"

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_7

    move v7, v5

    :goto_3
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "screen_key_press_app_switch"

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    :goto_4
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "torch_state"

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v7, v5

    :goto_5
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const-string v7, "camera_key_preferred_action_type"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v4, v7, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "cameraKeyActionType":I
    if-ne v5, v1, :cond_b

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x4

    const-string v10, "camera_key_preferred_action_shortcut_id"

    const/4 v11, -0x1

    iget-object v12, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v12

    invoke-static {v4, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v7, v10, :cond_a

    move v7, v5

    :goto_6
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    :goto_7
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "auto_test_mode_on"

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    move v7, v5

    :goto_8
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "single_key_use_enable"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_d

    move v7, v5

    :goto_9
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    :goto_a
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "key_bank_card_in_ese"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_f

    move v7, v5

    :goto_b
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "key_trans_card_in_ese"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_10

    move v7, v5

    :goto_c
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    const-string v7, "key_long_press_volume_down"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v7, "Street-snap"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Street-snap-picture"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Street-snap-movie"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    :goto_d
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "vr_mode"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_14

    move v7, v5

    :goto_e
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v9, "gesture_wakeup"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v9, v10, v11}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    const-string v7, "wake_gesture_enabled"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v4, v7, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_15

    move v3, v5

    .local v3, "mSuperGestureWakeupEnabled":Z
    :goto_f
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    if-eq v7, v3, :cond_3

    const-string v7, "wake_gesture_enabled"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    if-eqz v9, :cond_16

    :goto_10
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v6

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    monitor-exit v8

    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cameraKeyActionType":I
    .end local v2    # "hideNavBar":Z
    .end local v3    # "mSuperGestureWakeupEnabled":Z
    :cond_4
    move v2, v6

    goto/16 :goto_0

    .restart local v2    # "hideNavBar":Z
    :cond_5
    move v7, v6

    goto/16 :goto_1

    :cond_6
    move v7, v6

    goto/16 :goto_2

    :cond_7
    move v7, v6

    goto/16 :goto_3

    :cond_8
    move v7, v6

    goto/16 :goto_4

    :cond_9
    move v7, v6

    goto/16 :goto_5

    .restart local v1    # "cameraKeyActionType":I
    :cond_a
    move v7, v6

    goto/16 :goto_6

    :cond_b
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto/16 :goto_7

    .end local v1    # "cameraKeyActionType":I
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "cameraKeyActionType":I
    :cond_c
    move v7, v6

    goto/16 :goto_8

    :cond_d
    move v7, v6

    goto/16 :goto_9

    :cond_e
    :try_start_1
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_a

    :cond_f
    move v7, v6

    goto/16 :goto_b

    :cond_10
    move v7, v6

    goto/16 :goto_c

    .restart local v0    # "action":Ljava/lang/String;
    :cond_11
    const-string v7, "public_transportation_shortcuts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x2

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_d

    :cond_12
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_d

    :cond_13
    const-string v7, "key_long_press_volume_down"

    const-string v9, "none"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v4, v7, v9, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d

    :cond_14
    move v7, v6

    goto/16 :goto_e

    :cond_15
    move v3, v6

    goto :goto_f

    .restart local v3    # "mSuperGestureWakeupEnabled":Z
    :cond_16
    move v5, v6

    goto :goto_10
.end method
