.class public Lcom/flyme/server/notfication/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "DatabaseHelper"

    sput-object v0, Lcom/flyme/server/notfication/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private readDailyItem(Lmeizu/notification/RankingDaily;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "daily"    # Lmeizu/notification/RankingDaily;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/server/notfication/DatabaseHelper;->readResultItem(Lmeizu/notification/RankingResult;Landroid/database/Cursor;)V

    const-string v1, "click_ranking"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->click_ranking:I

    const-string v1, "send_ranking"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->send_ranking:I

    const-string v1, "remove_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    const-string v1, "category"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    const-string v1, "score_adjust"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->score_adjust:I

    const-string v1, "notification_priority"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    const-string v1, "category_priority"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    const-string v1, "correct_score"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->correct_score:F

    return-void
.end method

.method private readResultItem(Lmeizu/notification/RankingResult;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "result"    # Lmeizu/notification/RankingResult;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string v1, "id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p1, Lmeizu/notification/RankingResult;->key:J

    const-string v1, "package"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    const-string v1, "update_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lmeizu/notification/RankingResult;->updateDate:J

    const-string v1, "score"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingResult;->score:F

    const-string v1, "click_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingResult;->clickNum:I

    const-string v1, "all_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingResult;->allNum:I

    return-void
.end method


# virtual methods
.method public computingResult()V
    .locals 2

    .prologue
    const-string v0, "replace into result (package,score,update_date) select package,sum(min(score,0)*(1-day/10.0))/sum(1-day/10.0),datetime(\'now\',\'localtime\') as update_date from \n(select package,score,(strftime(\'%s\',\'now\')-update_date/1000)/3600/24 as day \nfrom daily where datetime(update_date/1000,\'unixepoch\')>date(\'now\',\'-10 day\') and datetime(update_date/1000,\'unixepoch\')<date(\'now\'))\ngroup by package;\nreplace into result (package,score,click_num,all_num,update_date)\nselect A.package,B.score,A.CLICK_NUM,A.ALL_NUM,datetime(\'now\',\'localtime\') from\n(select package, sum(click_num) as CLICK_NUM ,sum(all_num) as ALL_NUM from daily group by package) as A,\nresult as B where A.package=B.package;"

    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getDaily(Ljava/lang/String;Ljava/lang/String;J)Lmeizu/notification/RankingDaily;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "updateDate"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "package=? and update_date=? and category=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2, v6}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    return-object v1

    :cond_0
    return-object v6
.end method

.method public getMustUpdateDate()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v2, "select update_date from( select count(*) as num, update_date from daily where score=0 group by update_date) where num>0"

    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, "updateDate":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "updateDate":J
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J
    .locals 8
    .param p1, "daily"    # Lmeizu/notification/RankingDaily;
    .param p2, "updateScore"    # Z

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "package"

    iget-object v2, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_num"

    iget v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "all_num"

    iget v2, p1, Lmeizu/notification/RankingDaily;->allNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "update_date"

    iget-wide v2, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "remove_num"

    iget v2, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "category"

    iget-object v2, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "score_adjust"

    iget v2, p1, Lmeizu/notification/RankingDaily;->score_adjust:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "notification_priority"

    iget v2, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "category_priority"

    iget v2, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "correct_score"

    iget v2, p1, Lmeizu/notification/RankingDaily;->correct_score:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    if-eqz p2, :cond_0

    const-string v1, "score"

    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "click_ranking"

    iget v2, p1, Lmeizu/notification/RankingDaily;->click_ranking:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "send_ranking"

    iget v2, p1, Lmeizu/notification/RankingDaily;->send_ranking:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "daily"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    :goto_0
    iget-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "daily"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p1, Lmeizu/notification/RankingDaily;->key:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insetOrUpdateResult(JLjava/lang/String;JF)J
    .locals 7
    .param p1, "key"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "updateDate"    # J
    .param p6, "score"    # F

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "package"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "score"

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "update_date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    :goto_0
    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "result"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE IF NOT EXISTS \"daily\" (\"id\" INTEGER PRIMARY KEY  NOT NULL  DEFAULT (0) ,\"package\" VARCHAR NOT NULL  DEFAULT (null) ,\"click_num\" INTEGER NOT NULL  DEFAULT (0) ,\"all_num\" INTEGER NOT NULL  DEFAULT (0),\"remove_num\" INTEGER NOT NULL  DEFAULT (0),\"send_ranking\" INTEGER NOT NULL  DEFAULT (0) ,\"click_ranking\" INTEGER NOT NULL  DEFAULT (0) ,\"score\" FLOAT DEFAULT (0),\"correct_score\" FLOAT  DEFAULT (0),\"update_date\" DATETIME NOT NULL,\"category\" STRING,\"score_adjust\" INTEGER NOT NULL  DEFAULT (0),\"notification_priority\" INTEGER NOT NULL  DEFAULT (0),\"category_priority\" INTEGER NOT NULL  DEFAULT (0), UNIQUE(package, category))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \"result\" (\"id\" INTEGER PRIMARY KEY  NOT NULL  DEFAULT (0) ,\"package\" VARCHAR NOT NULL  DEFAULT (null) ,\"click_num\" INTEGER NOT NULL  DEFAULT (0) ,\"all_num\" INTEGER NOT NULL  DEFAULT (0),\"update_date\" DATETIME NOT NULL  DEFAULT (CURRENT_DATE) ,\"score\" FLOAT DEFAULT (0) ,UNIQUE(package))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v3, 0x4

    sget-object v0, Lcom/flyme/server/notfication/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p3, :cond_0

    if-ge p2, v3, :cond_1

    const-string v0, "drop table if exists daily"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/flyme/server/notfication/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_0

    const-string v0, "ALTER TABLE \'daily\' ADD \'correct_score\' FLOAT  DEFAULT (0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmeizu/notification/RankingDaily;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "daily"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "dailyList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Lmeizu/notification/RankingDaily;

    invoke-direct {v9}, Lmeizu/notification/RankingDaily;-><init>()V

    .local v9, "daily":Lmeizu/notification/RankingDaily;
    invoke-direct {p0, v9, v8}, Lcom/flyme/server/notfication/DatabaseHelper;->readDailyItem(Lmeizu/notification/RankingDaily;Landroid/database/Cursor;)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v9    # "daily":Lmeizu/notification/RankingDaily;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method public queryResult(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmeizu/notification/RankingResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "result"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "dailyList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingResult;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Lmeizu/notification/RankingResult;

    invoke-direct {v10}, Lmeizu/notification/RankingResult;-><init>()V

    .local v10, "result":Lmeizu/notification/RankingResult;
    invoke-direct {p0, v10, v8}, Lcom/flyme/server/notfication/DatabaseHelper;->readResultItem(Lmeizu/notification/RankingResult;Landroid/database/Cursor;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v10    # "result":Lmeizu/notification/RankingResult;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v9
.end method
