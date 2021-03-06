.class final Lcom/android/server/am/ActivityStackSupervisor$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final AUTORITY_OF_INTERCEPT_INTENT:Ljava/lang/String; = "details"

.field private static final GOOGLE_PLAY_PACKAGENAME:Ljava/lang/String; = "com.android.vending"

.field private static final HOTAPPS_ACTION:Ljava/lang/String; = "google.gms.install"

.field private static final HOTAPPS_PACKAGENAME:Ljava/lang/String; = "com.xrom.intl.appcenter"

.field private static final SCHEMA_OF_INTERCEPT_INTENT:Ljava/lang/String; = "market"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeMayInterceptPackage(Lcom/android/server/am/ActivityStackSupervisor;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "dst"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v1, :cond_0

    const-string v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/FlymePackageManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/FlymePackageManagerService;->changeMayInterceptPackage(Ljava/lang/String;Z)Z

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "android.permission.CALL_PHONE"

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/16 v2, 0xd

    invoke-static {v2, p2, p1, v1}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    return v3
.end method

.method static interceptAcquireGooglePlayServiceIntent(Landroid/content/Intent;I)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-string v5, "com.android.vending"

    invoke-interface {v4, v5, p1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :catch_0
    move-exception v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.android.vending"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "market"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "details"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "google.gms.install"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "com.xrom.intl.appcenter"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method static interceptForAccessControl(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 21
    .param p0, "dst"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I

    .prologue
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .local v16, "srcIntentFlag":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v8

    .local v8, "flag":I
    and-int/lit8 v17, v8, 0x10

    if-eqz v17, :cond_1

    const/4 v10, 0x1

    .local v10, "isLockView":Z
    :goto_0
    and-int/lit8 v17, v8, 0x20

    if-eqz v17, :cond_2

    const/4 v9, 0x1

    .local v9, "isFastStarting":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .local v6, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "flag":I
    .end local v9    # "isFastStarting":Z
    .end local v10    # "isLockView":Z
    .end local v16    # "srcIntentFlag":I
    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_2
    return-object p2

    .restart local v8    # "flag":I
    .restart local v16    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "isLockView":Z
    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "isFastStarting":Z
    goto :goto_1

    .restart local v6    # "context":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    const-string v17, "access_control"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    return-object p2

    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .local v13, "needAccessControl":Z
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "mz_app_lock_control"

    const/16 v19, 0x0

    const/16 v20, -0x3

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .local v4, "appAccessControl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    const-string v14, ""

    .local v14, "pkgName":Ljava/lang/String;
    const-string v5, ""

    .local v5, "className":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "name":Landroid/content/ComponentName;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Lmeizu/security/AccessControlManager;->checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .local v11, "isVideoActivity":Z
    if-eqz v11, :cond_7

    return-object p2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getAccessInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "activityLabel":Ljava/lang/CharSequence;
    if-nez v3, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_8
    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v2, "accessPkg":Ljava/lang/String;
    if-eqz v15, :cond_d

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p2, v0

    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/IntentExt;->setAccessSrcPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/IntentExt;->setAccessSrcClassName(Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_b

    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mIsIntercepted:Z

    goto/16 :goto_2

    .end local v2    # "accessPkg":Ljava/lang/String;
    .end local v3    # "activityLabel":Ljava/lang/CharSequence;
    .end local v4    # "appAccessControl":I
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "flag":I
    .end local v9    # "isFastStarting":Z
    .end local v10    # "isLockView":Z
    .end local v11    # "isVideoActivity":Z
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "needAccessControl":Z
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "srcIntentFlag":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v4    # "appAccessControl":I
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "flag":I
    .restart local v9    # "isFastStarting":Z
    .restart local v10    # "isLockView":Z
    .restart local v11    # "isVideoActivity":Z
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v13    # "needAccessControl":Z
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_c
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_3

    .restart local v2    # "accessPkg":Ljava/lang/String;
    :cond_d
    const/16 p2, 0x0

    .local p2, "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_4
.end method

.method static isIntercepted(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .locals 1
    .param p0, "dst"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsIntercepted:Z

    return v0
.end method
