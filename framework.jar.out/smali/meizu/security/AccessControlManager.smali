.class public Lmeizu/security/AccessControlManager;
.super Ljava/lang/Object;
.source "AccessControlManager.java"


# static fields
.field public static final ACCESS_CONTROL_CHANGE_INTENT:Ljava/lang/String; = "android.intent.action.ACCESS_CONTROL_CHANGED"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.mPackageName"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME_LABEL:Ljava/lang/String; = "android.intent.extra.mPackageName.label"

.field public static final ACCESS_CONTROL_EXTRA_REQUEST_CODE:Ljava/lang/String; = "android.intent.extra.request_code"

.field public static final ACCESS_CONTROL_EXTRA_START_INTENT:Ljava/lang/String; = "android.intent.extra.start_intent"

.field public static final ACCESS_CONTROL_INTENT:Ljava/lang/String; = "android.content.pm.CONFIRM_ACCESS_APPCATONS"

.field public static final EXTRA_ACCESS_CINTROL:Ljava/lang/String; = "access_control_"

.field public static final MEIZU_PASSWORD_LENGTH:Ljava/lang/String; = "meizu_password_length"

.field static final TAG:Ljava/lang/String; = "AccessControlManager"

.field public static final TYPE_ACCESS_GUARD:I = 0x2

.field public static final TYPE_ACCESS_NON:I = 0x0

.field public static final TYPE_ACCESS_OPEN:I = 0x3

.field public static final TYPE_ACCESS_PASSWORD:I = 0x1


# instance fields
.field final mContext:Landroid/content/Context;

.field private mService:Lmeizu/security/IAccessControlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/security/IAccessControlManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/security/IAccessControlManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    iget-object v0, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    return-void
.end method

.method private startAccessControlService()V
    .locals 9

    .prologue
    :try_start_0
    const-string v7, "activity"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "activity":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v2

    .local v2, "activityService":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .local v3, "clazz":Ljava/lang/Class;
    if-eqz v3, :cond_0

    const-string v8, "startAccessControlService"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const-string v7, "access_control"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "access":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v6

    .local v6, "service":Lmeizu/security/IAccessControlManager;
    if-eqz v6, :cond_1

    iput-object v6, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "access":Landroid/os/IBinder;
    .end local v1    # "activity":Landroid/os/IBinder;
    .end local v2    # "activityService":Ljava/lang/Object;
    .end local v6    # "service":Lmeizu/security/IAccessControlManager;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "AccessControlManager"

    const-string v8, "Unable to start AccessControlService!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAccessControlPassMz(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->addControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addTopAppAccessControlPass()V
    .locals 3

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->addTopAppAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_1

    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    if-eqz p1, :cond_2

    const-string v2, "com.meizu.media.camera"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AccessControlManager"

    const-string v3, "com.meizu.media.camera check in Keyguard and return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2, p1}, Lmeizu/security/IAccessControlManager;->checkAccessControl(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->checkControlPackageType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public clearAccessControlPass()V
    .locals 3

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->clearAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->getControlGuardPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public getControlOpenPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->getControlOpenPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->getControlPasswordPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public isAccessControlGuardEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->isAccessControlGuardEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->isAccessControlPasswordEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOff(I)V
    .locals 3
    .param p1, "why"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->screenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->setAccessControlGuardEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmeizu/security/AccessControlManager;->startAccessControlService()V

    :cond_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_1

    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
