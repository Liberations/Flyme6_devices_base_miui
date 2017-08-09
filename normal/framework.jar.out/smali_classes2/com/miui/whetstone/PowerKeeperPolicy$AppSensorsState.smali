.class Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppSensorsState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;,
        Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    }
.end annotation


# instance fields
.field public mControlPolicy:Z

.field public mControlState:Z

.field private mHandlesStatByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;I)V
    .locals 1
    .param p2, "uid"    # I

    .prologue
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mControlState:Z

    iput p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mControlPolicy:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    .prologue
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getSensorNameByType(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .prologue
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$100(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .local v3, "sm":Landroid/hardware/SensorManager;
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .local v1, "mSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_0
    return-object v4

    :cond_1
    const-string v4, "abnormal"

    goto :goto_0
.end method


# virtual methods
.method public delParam(ILandroid/os/IBinder;I)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "handle"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->delHandle(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sensors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isContainDiedProcess()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "pid":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->processIsLive(I)Z
    invoke-static {v2, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$000(Lcom/miui/whetstone/PowerKeeperPolicy;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "pid":I
    :goto_1
    return v2

    .restart local v1    # "pid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "pid":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public killSensors(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->killSensors()V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release all sensors for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->scanDiedProcess()V

    goto :goto_0
.end method

.method public kloGetAbnormalSensorsInfo()Lorg/json/JSONObject;
    .locals 13

    .prologue
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .local v4, "json":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/16 v8, 0x64

    .local v8, "oom_adj":I
    const/4 v9, 0x0

    .local v9, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$100(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/miui/whetstone/PowerKeeperPolicy;->getOomAdjByPid(Landroid/content/Context;I)I

    move-result v7

    .local v7, "minOom":I
    if-ge v7, v8, :cond_0

    const/16 v10, -0x64

    if-eq v7, v10, :cond_0

    move v8, v7

    :cond_0
    if-nez v9, :cond_1

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$100(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/miui/whetstone/PowerKeeperPolicy;->getPackageNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->processIsLive(I)Z
    invoke-static {v10, v11}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$000(Lcom/miui/whetstone/PowerKeeperPolicy;I)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .local v6, "jsonson":Lorg/json/JSONObject;
    const-string v10, "processName"

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    invoke-virtual {v10}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getFirstSensorHandleByPid()I

    move-result v2

    .local v2, "handle":I
    const-string v10, "sensorName"

    invoke-direct {p0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->getSensorNameByType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v2    # "handle":I
    .end local v6    # "jsonson":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v7    # "minOom":I
    :cond_3
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-lez v10, :cond_6

    if-nez v9, :cond_4

    const-string v9, "unknown"

    :cond_4
    const-string v10, "pkgName"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .local v1, "foreground":Z
    const/4 v10, 0x2

    if-gt v8, v10, :cond_5

    const/4 v1, 0x1

    :cond_5
    const-string v10, "foreground"

    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "sensors"

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "control"

    iget-boolean v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mControlState:Z

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "foreground":Z
    :cond_6
    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    const-string v10, "PowerKeeperPolicy"

    const-string v11, "kloGetAbnormalSensorsInfo"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public pauseSensors()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->pauseSensors()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mControlState:Z

    return-void
.end method

.method public resumeSensors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mControlState:Z

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->resumeSensors()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    :cond_1
    return-void
.end method

.method public scanDiedProcess()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "pid":I
    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanDiedProcess pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->processIsLive(I)Z
    invoke-static {v2, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$000(Lcom/miui/whetstone/PowerKeeperPolicy;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanDiedProcess pid = died"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->killSensors(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "pid":I
    :cond_1
    return-void
.end method

.method public setHandleOperationPendingState(ILandroid/os/IBinder;IZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "handle"    # I
    .param p4, "pending"    # Z

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .end local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;I)V

    .restart local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->setHandleOperationPendingState(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method public upParam(ZLandroid/os/IBinder;IIJJI)V
    .locals 9
    .param p1, "st"    # Z
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "handle"    # I
    .param p5, "sam"    # J
    .param p7, "max"    # J
    .param p9, "res"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .local v0, "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .end local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    invoke-direct {v0, p0, p3}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;I)V

    .restart local v0    # "handleStateByPid":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mHandlesStatByPid:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    move-object v1, p2

    move v2, p4

    move v3, p1

    move-wide v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->updateParams(Landroid/os/IBinder;IZJJI)V

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->scanDiedProcess()V

    return-void
.end method
