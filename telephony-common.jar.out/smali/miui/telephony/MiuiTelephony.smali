.class public Lmiui/telephony/MiuiTelephony;
.super Lmiui/telephony/MiuiTelephonyBase;
.source "MiuiTelephony.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static final PHONE_COUNT:I

.field static sContext:Landroid/content/Context;

.field private static sInstance:Lmiui/telephony/MiuiTelephony;


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field private mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "MiuiTelephony"

    sput-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lmiui/telephony/MiuiTelephonyBase;-><init>()V

    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lmiui/telephony/MiuiTelephony;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->init()V

    new-instance v0, Lmiui/telephony/ImeiMeidSource;

    invoke-direct {v0}, Lmiui/telephony/ImeiMeidSource;-><init>()V

    iput-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    return-void
.end method

.method public static checkIfCallerIsSelfOrForegroundUser()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-ne v7, v8, :cond_1

    move v4, v5

    .local v4, "ok":Z
    :goto_0
    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ne v7, v0, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "callingUser":I
    .end local v2    # "ident":J
    :cond_0
    :goto_2
    sget-object v5, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfCallerIsSelfOrForegoundUser: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .end local v4    # "ok":Z
    :cond_1
    move v4, v6

    goto :goto_0

    .restart local v0    # "callingUser":I
    .restart local v2    # "ident":J
    .restart local v4    # "ok":Z
    :cond_2
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfCallerIsSelfOrForegoundUser: Exception ex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getInstance()Lmiui/telephony/MiuiTelephony;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    sget v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    new-instance v1, Lmiui/telephony/MiuiTelephony;

    invoke-direct {v1}, Lmiui/telephony/MiuiTelephony;-><init>()V

    sput-object v1, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    :try_start_0
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sget-object v2, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->setMiuiTelephony(Lmiui/telephony/IMiuiTelephony;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v5, "MiuiTelephony:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v5, p2}, Lmiui/telephony/ImeiMeidSource;->dump(Ljava/io/PrintWriter;)V

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lmiui/telephony/DefaultSimManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lmiui/telephony/MiuiTelephony;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "getCellLocationForSlot"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/ImeiMeidSource;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/ImeiMeidSource;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    invoke-static {p1, p2, p3, p4}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDefaultSlotId()I
    .locals 1

    .prologue
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/DefaultSimManager;->getSystemDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public isIccCardActivate(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/IccCardActivateHelper;->isActivate(I)Z

    move-result v0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsRegistered exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "otherNumeric"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isVolteEnabledByUser exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2, p3}, Lmiui/telephony/ServiceProviderUtils;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/DefaultSimManager;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/DefaultSimManager;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    return-void
.end method
