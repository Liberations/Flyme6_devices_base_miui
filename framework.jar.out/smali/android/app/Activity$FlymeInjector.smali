.class final Landroid/app/Activity$FlymeInjector;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$FlymeInjector$TintBarInject;,
        Landroid/app/Activity$FlymeInjector$FlymeDecorView;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFlymeAccessControl(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "jumpAccess":Z
    const-string v3, "com.meizu.flyme.launcher"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v3, :cond_0

    const-string v3, "access_control"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/security/AccessControlManager;

    iput-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_app_lock_control"

    const/4 v5, -0x3

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "appAccessControl":I
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v3, v2}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .end local v0    # "appAccessControl":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method static injectAccessControl(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mz_app_lock_control"

    const/4 v9, -0x3

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "appAccessControl":I
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v7, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v7}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v2

    .local v2, "flag":I
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .local v5, "isLockView":Z
    :goto_0
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .local v4, "isFastStarting":Z
    :goto_1
    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v7, v7, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v7, :cond_1

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .end local v2    # "flag":I
    .end local v4    # "isFastStarting":Z
    .end local v5    # "isLockView":Z
    :cond_1
    :goto_2
    return-void

    .restart local v2    # "flag":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "isLockView":Z
    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isFastStarting":Z
    goto :goto_1

    :cond_4
    iget-object v7, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v7, :cond_5

    const-string v7, "access_control"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmeizu/security/AccessControlManager;

    iput-object v7, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_5
    iget-object v7, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "mAccessApp":Landroid/content/Intent;
    iget-object v7, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .end local v2    # "flag":I
    .end local v4    # "isFastStarting":Z
    .end local v5    # "isLockView":Z
    .end local v6    # "mAccessApp":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "flag":I
    .restart local v4    # "isFastStarting":Z
    .restart local v5    # "isLockView":Z
    .restart local v6    # "mAccessApp":Landroid/content/Intent;
    :cond_6
    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_3
.end method

.method static onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0, p1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onCreate()V

    return-void
.end method

.method static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onStart()V

    return-void
.end method

.method static onWindowAttributesChanged(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0, p1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static setTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "on"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .local v0, "bits":I
    if-eqz p1, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method static startFlymeActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "android"

    const-string v6, "com.meizu.app.AccessApplication"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "newComponentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v2, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .local v4, "srcIntentFlag":I
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v5, v4}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v6, 0x40000

    invoke-virtual {v5, v6}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    const-string v5, "accesspkg"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "accesscls"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p0, v2, v7, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
