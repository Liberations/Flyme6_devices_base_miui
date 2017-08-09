.class public final Lcom/miui/server/PerfShielderService;
.super Lcom/android/internal/app/IPerfShielder$Stub;
.source "PerfShielderService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x493e0L

.field private static final LAUNCH_TYPE_DEFAULT:I = 0x0

.field private static final LAUNCH_TYPE_FROM_HOME:I = 0x1

.field static final MSG_REBIND:I = 0x1

.field private static final PACKAGE_START_MAX_TIME:J = 0x2710L

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.MiuiPerfService"

.field private static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.performance"

.field private static final SELF_CAUSE_NAMES:[Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field private static final TAG:Ljava/lang/String; = "PerfShielderService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchPackage:Ljava/lang/String;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field final mHandler:Landroid/os/Handler;

.field private mLaunchTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageStartTime:J

.field protected mPerfService:Lcom/miui/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Slow handle input"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Slow handle animation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Slow handle traversal"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Slow bitmap uploads"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Slow issue draw commands"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Slow swap buffers"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.performance"

    const-string v2, "com.miui.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance: can\'t bind to com.miui.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportActivityLaunchRecords()V
    .locals 8

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LaunchTimeRecord;

    .local v4, "record":Lcom/android/internal/app/LaunchTimeRecord;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PackageName"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Activity"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "LaunchStartTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "LaunchEndTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "Type"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "record":Lcom/android/internal/app/LaunchTimeRecord;
    :cond_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    invoke-interface {v5, v1}, Lcom/miui/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "type":I
    new-instance v1, Lcom/android/internal/app/LaunchTimeRecord;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .local v1, "record":Lcom/android/internal/app/LaunchTimeRecord;
    if-eqz p7, :cond_2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mCurrentLaunchPackage:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_1
    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mCurrentLaunchPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    sub-long v2, p5, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    goto :goto_1

    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "opti":I
    :try_start_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    aget-object v1, p3, v2

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .end local v1    # "opt":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    invoke-interface {v3, p3}, Lcom/miui/server/IMiuiPerfService;->dump([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    const-string v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PerfShielder dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  [-h] ..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  cmd may be one of:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    launchtime [PACKAGE_NAME]: package launch time details."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    janktracker [PACKAGE_NAME]: top jank record details."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportPerceptibleJank(IJJI)V
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "totalDuration"    # J
    .param p4, "maxFrameDuration"    # J
    .param p6, "appCause"    # I

    .prologue
    const-wide/16 v6, 0x8

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "callingPkg":Ljava/lang/String;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive jank info from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-ltz p6, :cond_1

    sget-object v3, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge p6, v3, :cond_1

    sget-object v3, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v2, v3, p6

    .local v2, "strAppCause":Ljava/lang/String;
    :goto_1
    const-string v3, "PerfShielderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jank raised from pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Janky Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LargestFrameDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "pkg"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "totalDuration"

    invoke-virtual {v0, v3, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "maxFrameDuration"

    invoke-virtual {v0, v3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "appCause"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "systemCause"

    const-string v4, "Unknown"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "strAppCause":Ljava/lang/String;
    :cond_1
    const-string v2, "Unknown"

    goto :goto_1
.end method
