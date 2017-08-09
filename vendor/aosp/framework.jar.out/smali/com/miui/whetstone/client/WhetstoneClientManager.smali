.class public abstract Lcom/miui/whetstone/client/WhetstoneClientManager;
.super Ljava/lang/Object;
.source "WhetstoneClientManager.java"


# static fields
.field private static final BOARD_PERFORMANCE_SUPPORT:Z

.field private static CACHAED_STATISTICS_SUPPORT:Z = false

.field private static CHECK_APP_MEMORY_SUPPORT:Z = false

.field private static final DEBUG:Z = false

.field private static final POWER_PROFILE_CONFIG:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field private static final POWER_PROFILE_PERFORMANCE:Ljava/lang/String; = "high"

.field private static RED_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "WhetstoneClientManager"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mService:Lcom/miui/whetstone/IWhetstoneClient;

.field public static mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

.field private static mThresholds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

.field private static protectApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAndroidCachePss:J

.field private static sCallingPid:I

.field private static sPerformanceEnable:Z

.field private static sPerformanceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sPowerProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v0, "feature_red_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v1, "com.jeejen.family.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    const-string v0, "feature_cached_statistics_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    const-string v0, "feature_check_app_memory_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComponment([Landroid/content/ComponentName;)Z
    .locals 7
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    sget-object v6, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .local v4, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_0
    sput-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    monitor-exit v6

    const/4 v5, 0x1

    return v5

    .end local v0    # "arr$":[Landroid/content/ComponentName;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .prologue
    sget-boolean v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "valueObject":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "value":I
    long-to-int v4, p2

    div-int/lit16 v1, v4, 0x400

    .local v1, "pss":I
    if-le v1, v2, :cond_0

    if-eqz v2, :cond_0

    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v4, :cond_2

    :try_start_0
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v4, p0, p1, v1}, Lcom/miui/whetstone/IWhetstoneClient;->notifyApplicationOver(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WhetstoneClientManager"

    const-string v5, "checkApplicationsMemoryThreshold"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static doPerformanceLam()V
    .locals 2

    .prologue
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "middle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    :cond_0
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "high"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static doResumeLam()V
    .locals 2

    .prologue
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.aries.power_profile"

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getEmptyProcTotalMemoryInfo()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .local v0, "totalMemory":J
    sget-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    goto :goto_0
.end method

.method public static getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    .locals 1

    .prologue
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/miui/whetstone/IWhetstoneClient;
    .param p2, "whetstoneAM"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    sput-object p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    new-instance v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;-><init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->addObserver(Ljava/util/Observer;)V

    sput-object p2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    return-void
.end method

.method public static isAlarmAllowedLocked(IIIZ)Z
    .locals 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "generalRestrictApply"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getUidFrozenState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->putUidFrozenState(II)Z

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V

    const-string v1, "WhetstoneClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is frozen, but allow it for it\'s type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "WhetstoneClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is frozen, not allowed alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v2, :cond_0

    if-ne p3, v0, :cond_0

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->isAlarmAllowedLocked(III)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isAnimationEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    return v0
.end method

.method public static isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    return v0
.end method

.method public static isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 1
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "transit"    # I

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getUidFrozenState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WhetstoneClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is frozen, not allowed Broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v1, p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNotificationAllowed(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstoneClient;->isNotificationAllowed(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneClientManager"

    const-string v3, "isNotificationAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isProtectImportantApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isProtectImportantAppWithUid(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isProtectImportantAppWithUid(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    sget-object v5, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .end local v1    # "item":Ljava/lang/String;
    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method public static isStartPorcessAllowedByBroadcast(ILjava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "callingPid"    # I
    .param p1, "callPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "name"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, p2, p3, v3}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/whetstone/IWhetstoneClient;->isStartPorcessAllowedByBroadcastLocked(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneClientManager"

    const-string v3, "isStartPorcessAllowedByBroadcast"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isStartServiceAllowedLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 3
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getUidFrozenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WhetstoneClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is frozen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start service in frozen app, not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemProtectImportantApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static prepareAppTransitionLam(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "realActivity2"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doPerformanceLam()V

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doResumeLam()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneClientManager"

    const-string v3, "prepareAppTransitionLam"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static processBroadcastHookLocked(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "curComponent"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "targetProcess"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "userId":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .local v5, "className":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v3, 0x4

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p6, v7, v1

    move-object v1, p0

    move-object v2, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied by Whetstone, cannot allow broadcast receiver started from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .end local v5    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "className":Ljava/lang/String;
    :cond_2
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start broadcast receiver from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static setCachedPidLam(IIJ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "pid"    # I
    .param p2, "lastPss"    # J

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    :cond_1
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    add-long/2addr v0, p2

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    goto :goto_0
.end method

.method public static setCallingProcessPid(I)V
    .locals 0
    .param p0, "pid"    # I

    .prologue
    sput p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    return-void
.end method

.method public static setComponment([Landroid/content/ComponentName;)Z
    .locals 7
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    sget-object v6, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_0
    sput-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    monitor-exit v6

    const/4 v5, 0x1

    return v5

    .end local v0    # "arr$":[Landroid/content/ComponentName;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static setForegroundProcess(ILjava/lang/String;)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstoneClient;->setForegroundProcess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WhetstoneClientManager"

    const-string v2, "setForegroundProcess"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startServiceAllowed(Landroid/content/ComponentName;IZ)Z
    .locals 8
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "intentFlags"    # I
    .param p2, "whileRestarting"    # Z

    .prologue
    const/4 v5, 0x1

    .local v5, "ret":Z
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, "service":Landroid/content/Intent;
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    sget v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-interface {v0, v1, v7}, Lcom/miui/whetstone/IWhetstoneClient;->startServiceAllowedLocked(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v7    # "service":Landroid/content/Intent;
    :cond_2
    :goto_1
    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "WhetstoneClientManager"

    const-string v1, "startServiceAllowed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static startServiceAllowed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    .local v1, "ret":Z
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    sget v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-interface {v2, v3, p1}, Lcom/miui/whetstone/IWhetstoneClient;->startServiceAllowedLocked(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneClientManager"

    const-string v3, "startServiceAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "threshold":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "threshold":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static updatePackageLockedStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static updatePackageLockedStatus(Ljava/lang/String;ZI)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static updateUserLockedAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    return-void
.end method

.method public static updateUserLockedAppList(Ljava/util/List;I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
