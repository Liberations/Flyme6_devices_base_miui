.class public Lcom/android/server/notification/RankingControllerImpl;
.super Ljava/lang/Object;
.source "RankingControllerImpl.java"

# interfaces
.implements Lcom/flyme/server/notfication/RankingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingControllerImpl$H;
    }
.end annotation


# static fields
.field private static final CLEAR_PACKAGE_DAILY:I = 0x3

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_NONE:I = -0x1

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE_BY_USER:I = 0x3

.field private static final LOAD_DAILY_RECORDS:I = 0x4

.field private static final LOAD_PACKAGE_DATA:I = 0x1

.field private static final MSG_CLICK:I = 0x6

.field private static final MSG_POST:I = 0x5

.field private static final MSG_REMOVE:I = 0x7

.field private static final PRUNE_MIN_DELAY_MS:J = 0x5265c00L

.field private static SCORE_SCALE:F = 0.0f

.field private static TAG:Ljava/lang/String; = null

.field private static final UPDATE_PACKAGE_DAILY:I = 0x2


# instance fields
.field private final mAppDailyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lmeizu/notification/RankingDaily;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppResultMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lmeizu/notification/RankingResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

.field private final mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

.field private mLastClearTime:J

.field private mLastUpdateTime:J

.field mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "eventType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->parseNotificationRecord(Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/RankingControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/RankingControllerImpl;->computingDailyResult()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/RankingControllerImpl;Lmeizu/notification/RankingDaily;Z)V
    .locals 0
    .param p1, "RankingDaily"    # Lmeizu/notification/RankingDaily;
    .param p2, "addMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->updateAppDaily(Lmeizu/notification/RankingDaily;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "rankingDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->writeEvent(ILmeizu/notification/RankingDaily;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "RankingControllerImpl"

    sput-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/android/server/notification/RankingControllerImpl;->SCORE_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mLastClearTime:J

    iget-wide v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mLastClearTime:J

    invoke-static {v0, v1}, Lcom/flyme/server/notfication/MyDateUtils;->getDate(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mLastUpdateTime:J

    new-instance v0, Lcom/flyme/server/notfication/DatabaseHelper;

    const-string v1, "notification_ranking.db"

    invoke-direct {v0, p1, v1}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    new-instance v0, Lcom/android/server/notification/RankingControllerImpl$H;

    invoke-direct {v0, p0, p2, v2}, Lcom/android/server/notification/RankingControllerImpl$H;-><init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;Lcom/android/server/notification/RankingControllerImpl$H;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/RankingControllerImpl;->sendHandlerMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private computingDailyResult()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    invoke-virtual {v4}, Lcom/flyme/server/notfication/DatabaseHelper;->getMustUpdateDate()Ljava/util/List;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computingDailyResult list size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "item":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->computingDailyResult(J)V

    goto :goto_0

    .end local v0    # "item":J
    :cond_0
    return-void
.end method

.method private computingDailyResult(J)V
    .locals 7
    .param p1, "updateDate"    # J

    .prologue
    sget-object v1, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computingDailyResult updateDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    const-string v2, "update_date=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "dailyList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-direct {p0, v0}, Lcom/android/server/notification/RankingControllerImpl;->computingDailyResult(Ljava/util/List;)V

    return-void
.end method

.method private computingDailyResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmeizu/notification/RankingDaily;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dailyList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    const/4 v6, 0x0

    new-instance v2, Lcom/android/server/notification/RankingControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/RankingControllerImpl$1;-><init>(Lcom/android/server/notification/RankingControllerImpl;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    iput v1, v2, Lmeizu/notification/RankingDaily;->send_ranking:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/notification/RankingControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/notification/RankingControllerImpl$2;-><init>(Lcom/android/server/notification/RankingControllerImpl;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/notification/RankingDaily;

    .local v0, "RankingDaily":Lmeizu/notification/RankingDaily;
    iput v1, v0, Lmeizu/notification/RankingDaily;->click_ranking:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    iget v2, v2, Lmeizu/notification/RankingDaily;->click_ranking:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/server/notification/RankingControllerImpl;->SCORE_SCALE:F

    mul-float/2addr v3, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    iget v2, v2, Lmeizu/notification/RankingDaily;->send_ranking:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/android/server/notification/RankingControllerImpl;->SCORE_SCALE:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lmeizu/notification/RankingDaily;->score:F

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu/notification/RankingDaily;->key:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    :cond_1
    return-void
.end method

.method private parseNotificationRecord(Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "eventType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmeizu/notification/RankingDaily;

    invoke-direct {v0}, Lmeizu/notification/RankingDaily;-><init>()V

    .local v0, "rankingDaily":Lmeizu/notification/RankingDaily;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iput v3, v0, Lmeizu/notification/RankingDaily;->allNum:I

    iput v3, v0, Lmeizu/notification/RankingDaily;->clickNum:I

    iput v3, v0, Lmeizu/notification/RankingDaily;->removeNum:I

    iput v3, v0, Lmeizu/notification/RankingDaily;->score_adjust:I

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iput v1, v0, Lmeizu/notification/RankingDaily;->score:F

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iput v1, v0, Lmeizu/notification/RankingDaily;->correct_score:F

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput v1, v0, Lmeizu/notification/RankingDaily;->notification_priority:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v1, v0, Lmeizu/notification/RankingDaily;->category_priority:I

    return-object v0

    :pswitch_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    iput v4, v0, Lmeizu/notification/RankingDaily;->allNum:I

    goto :goto_0

    :pswitch_1
    iput v4, v0, Lmeizu/notification/RankingDaily;->clickNum:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    goto :goto_0

    :pswitch_2
    iput v4, v0, Lmeizu/notification/RankingDaily;->removeNum:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pruneIfNecessary()V
    .locals 0

    .prologue
    return-void
.end method

.method private sendHandlerMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateAppDaily(Lmeizu/notification/RankingDaily;Z)V
    .locals 8
    .param p1, "RankingDaily"    # Lmeizu/notification/RankingDaily;
    .param p2, "addMode"    # Z

    .prologue
    if-eqz p2, :cond_1

    iget-wide v2, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-static {v2, v3}, Lcom/flyme/server/notfication/MyDateUtils;->getDate(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    .local v1, "oldDaily":Lmeizu/notification/RankingDaily;
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lmeizu/notification/RankingDaily;->key:J

    iput-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    iget v2, p1, Lmeizu/notification/RankingDaily;->allNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->allNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->allNum:I

    iget v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v2, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    iget-object v2, v1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iput-object v2, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    iput v2, p1, Lmeizu/notification/RankingDaily;->score_adjust:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->notification_priority:I

    iput v2, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->category_priority:I

    iput v2, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v2

    iput-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    return-void

    .restart local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    iget-object v3, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iget-wide v6, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/flyme/server/notfication/DatabaseHelper;->getDaily(Ljava/lang/String;Ljava/lang/String;J)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .restart local v1    # "oldDaily":Lmeizu/notification/RankingDaily;
    goto :goto_0
.end method

.method private writeEvent(ILmeizu/notification/RankingDaily;)V
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "rankingDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    const/4 v5, 0x1

    iget-wide v2, p2, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-static {v2, v3}, Lcom/flyme/server/notfication/MyDateUtils;->getDate(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p2, Lmeizu/notification/RankingDaily;->updateDate:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    .local v1, "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-wide v2, v1, Lmeizu/notification/RankingDaily;->key:J

    iput-wide v2, p2, Lmeizu/notification/RankingDaily;->key:J

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    invoke-virtual {v2, p2, v5}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v2

    iput-wide v2, p2, Lmeizu/notification/RankingDaily;->key:J

    invoke-direct {p0}, Lcom/android/server/notification/RankingControllerImpl;->pruneIfNecessary()V

    return-void

    .end local v1    # "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    iget-object v3, p2, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iget-wide v6, p2, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/flyme/server/notfication/DatabaseHelper;->getDaily(Ljava/lang/String;Ljava/lang/String;J)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .restart local v1    # "oldDaily":Lmeizu/notification/RankingDaily;
    if-eqz v1, :cond_0

    if-ne p1, v5, :cond_0

    iget v2, p2, Lmeizu/notification/RankingDaily;->correct_score:F

    iget v3, v1, Lmeizu/notification/RankingDaily;->correct_score:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lmeizu/notification/RankingDaily;->score:F

    iget v3, v1, Lmeizu/notification/RankingDaily;->correct_score:F

    sub-float/2addr v2, v3

    iget v3, p2, Lmeizu/notification/RankingDaily;->correct_score:F

    add-float/2addr v2, v3

    iput v2, p2, Lmeizu/notification/RankingDaily;->score:F

    goto :goto_0

    :pswitch_0
    iget v2, p2, Lmeizu/notification/RankingDaily;->allNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->allNum:I

    add-int/2addr v2, v3

    iput v2, p2, Lmeizu/notification/RankingDaily;->allNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v2, p2, Lmeizu/notification/RankingDaily;->notification_priority:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->notification_priority:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lmeizu/notification/RankingDaily;->category_priority:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->category_priority:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->score_adjust:I

    iget v2, p2, Lmeizu/notification/RankingDaily;->correct_score:F

    iget v3, v1, Lmeizu/notification/RankingDaily;->correct_score:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Lmeizu/notification/RankingDaily;->score:F

    iput v2, p2, Lmeizu/notification/RankingDaily;->score:F

    goto :goto_1

    :pswitch_1
    iget v2, v1, Lmeizu/notification/RankingDaily;->allNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->allNum:I

    iget v2, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    add-int/2addr v2, v3

    iput v2, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    if-gez v2, :cond_3

    iput v5, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    :goto_2
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v2, v1}, Lcom/android/server/notification/NotificationFirewall;->increaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v2

    iput v2, p2, Lmeizu/notification/RankingDaily;->score:F

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->score_adjust:I

    goto/16 :goto_1

    :cond_3
    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    goto :goto_2

    :pswitch_2
    iget v2, v1, Lmeizu/notification/RankingDaily;->allNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->allNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v2, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    add-int/2addr v2, v3

    iput v2, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    if-lez v2, :cond_4

    const/4 v2, -0x1

    iput v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    :goto_3
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v2, v1}, Lcom/android/server/notification/NotificationFirewall;->decreaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v2

    iput v2, p2, Lmeizu/notification/RankingDaily;->score:F

    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    iput v2, p2, Lmeizu/notification/RankingDaily;->score_adjust:I

    goto/16 :goto_1

    :cond_4
    iget v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmeizu/notification/RankingDaily;->score_adjust:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logPosted(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .locals 1
    .param p1, "sbn1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sbn2"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "sbn1"    # Ljava/lang/Object;
    .param p2, "sbn2"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .end local p1    # "sbn1":Ljava/lang/Object;
    check-cast p2, Landroid/service/notification/StatusBarNotification;

    .end local p2    # "sbn2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    const-string v3, "Current Flyme Notification Intelligent Management \n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ds$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "ds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/notification/RankingDaily;

    invoke-virtual {v3}, Lmeizu/notification/RankingDaily;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RankingDaily key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    :cond_0
    return-void
.end method

.method public getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v4, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v4, v4, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/notification/RankingDaily;

    .local v0, "daily":Lmeizu/notification/RankingDaily;
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v3, v3, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iget v5, v0, Lmeizu/notification/RankingDaily;->correct_score:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    iget v3, v0, Lmeizu/notification/RankingDaily;->score:F

    iget v5, v0, Lmeizu/notification/RankingDaily;->correct_score:F

    sub-float/2addr v3, v5

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, v5, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    add-float v2, v3, v5

    .local v2, "score":F
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .end local v2    # "score":F
    :cond_0
    :try_start_1
    iget v3, v0, Lmeizu/notification/RankingDaily;->score:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    .end local v0    # "daily":Lmeizu/notification/RankingDaily;
    :cond_1
    monitor-exit v4

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v3, v3, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/notification/RankingResult;

    iget v0, v0, Lmeizu/notification/RankingResult;->score:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notificationOnCanceledByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public notificationOnClick(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logClicked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V
    .locals 0
    .param p1, "firewall"    # Lcom/android/server/notification/NotificationFirewall;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    return-void
.end method
