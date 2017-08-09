.class public Lcom/android/internal/telephony/MiuiIccProvider;
.super Landroid/content/ContentProvider;
.source "MiuiIccProvider.java"


# static fields
.field public static final ADDRESS_BOOK_COLUMN_ANR:I = 0x4

.field public static final ADDRESS_BOOK_COLUMN_EMAILS:I = 0x2

.field public static final ADDRESS_BOOK_COLUMN_ID:I = 0x3

.field public static final ADDRESS_BOOK_COLUMN_NAME:I = 0x0

.field public static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field public static final ADDRESS_BOOK_COLUMN_NUMBER:I = 0x1

.field private static final ADN:I = 0x1

.field private static final ADN_CAPACITY:I = 0x5

.field private static final ADN_STORAGE:I = 0x6

.field static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final FREE_ADN:I = 0x4

.field private static final IS_PHONEBOOK_READY:I = 0x7

.field private static final IS_USIM_PHONEBOOK:I = 0x8

.field private static final LAST_ERROR:I = 0x9

.field private static final SDN:I = 0x3

.field public static final STR_ANR:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_ID:Ljava/lang/String; = "_id"

.field public static final STR_NAME:Ljava/lang/String; = "name"

.field public static final STR_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NAME:Ljava/lang/String; = "newName"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "anr"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adnstroage"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isphonebookready"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isusimphonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "lasterror"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAdnCapacity(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, "capacity":I
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v2, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v2, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .local v1, "count":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    .end local v1    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getFreeAdn(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, "freeAdn":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .local v0, "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return-object v0

    .restart local v0    # "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getLastError(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, "errno":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "error"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getLastError()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getStorage(I)Landroid/database/Cursor;
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .local v2, "freeAdn":I
    const/4 v0, 0x0

    .local v0, "capacity":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "total"

    aput-object v6, v5, v8

    const-string v6, "free"

    aput-object v6, v5, v7

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v4, v9, [Ljava/lang/Object;

    .local v4, "storage":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .end local v4    # "storage":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isPhoneBookReady(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .local v3, "ready":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "ready"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v2

    .local v2, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .local v0, "count":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move v4, v5

    goto :goto_1

    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private isUsimPhoneBook(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .local v3, "usim":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "usimphonebook"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v2

    .local v2, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isUsimPhoneBookRecords()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .local v0, "count":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move v4, v5

    goto :goto_1

    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efid"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    move-object v0, v4

    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "selections":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "s":I
    :goto_1
    if-ge v2, v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {p0, v7, v1, v2, v6}, Lcom/android/internal/telephony/MiuiIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "i":I
    .end local v5    # "s":I
    .end local v6    # "selections":[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_2
    return-object v1

    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V
    .locals 8
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I
    .param p4, "selections"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    sget-object v5, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v5

    .local v3, "length":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p4, p1, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    .local v1, "contact":[Ljava/lang/Object;
    const/4 v5, 0x3

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "s":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v1    # "contact":[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 5
    .param p1, "selections"    # [Ljava/lang/String;
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .local v1, "match":Z
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    if-nez v1, :cond_0

    .end local v0    # "i":I
    :cond_2
    return v1

    .restart local v0    # "i":I
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :pswitch_2
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_3

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .local v6, "results":[Ljava/lang/String;
    const-string v9, "AND"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "argsIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_0

    aget-object v5, v7, v2

    .local v5, "param":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "keyVal":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .local v8, "val":Ljava/lang/String;
    const-string v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argsIndex":I
    .local v1, "argsIndex":I
    aget-object v8, p2, v0

    move v0, v1

    .end local v1    # "argsIndex":I
    .restart local v0    # "argsIndex":I
    :cond_4
    const-string v9, "tag"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    :cond_5
    const-string v9, "pin2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    :cond_6
    const-string v9, "number"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    :cond_7
    const-string v9, "_id"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x3

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    :cond_8
    const-string v9, "name"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    :cond_9
    const-string v9, "emails"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1

    :cond_a
    const-string v9, "anr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1
.end method

.method private updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "index"    # I
    .param p4, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p4, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    sget-object v3, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .local v9, "slotId":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v9    # "slotId":I
    .end local v18    # "match":I
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .restart local v9    # "slotId":I
    .restart local v18    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .local v4, "efid":I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "selections":[Ljava/lang/String;
    if-nez v19, :cond_1

    const/4 v3, 0x0

    :goto_2
    return v3

    .end local v4    # "efid":I
    .end local v19    # "selections":[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .restart local v4    # "efid":I
    goto :goto_1

    .restart local v19    # "selections":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    aget-object v3, v19, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    :goto_3
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    if-ltz v8, :cond_3

    const-string v5, ""

    const-string v6, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v7, v19, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v21

    .local v21, "success":Z
    :goto_4
    if-nez v21, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    .end local v8    # "index":I
    .end local v21    # "success":Z
    :cond_2
    const/4 v8, -0x1

    goto :goto_3

    .restart local v8    # "index":I
    :cond_3
    const/4 v3, 0x0

    aget-object v12, v19, v3

    const/4 v3, 0x1

    aget-object v13, v19, v3

    const-string v14, ""

    const-string v15, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v16, v19, v3

    move-object/from16 v10, p0

    move v11, v4

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    .end local v21    # "success":Z
    :cond_4
    if-ltz v8, :cond_5

    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const-string v10, ""

    invoke-direct {v3, v5, v6, v7, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    .end local v21    # "success":Z
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v5, 0x0

    aget-object v5, v19, v5

    const/4 v6, 0x1

    aget-object v6, v19, v6

    const/4 v7, 0x0

    const-string v10, ""

    invoke-direct {v3, v5, v6, v7, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v6, ""

    const-string v7, ""

    const/4 v10, 0x0

    const-string v11, ""

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    sget-object v2, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .local v9, "slotId":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "pin2":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .local v14, "match":I
    packed-switch v14, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v8    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v14    # "match":I
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .restart local v8    # "pin2":Ljava/lang/String;
    .restart local v9    # "slotId":I
    .restart local v14    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .local v3, "efid":I
    :goto_1
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "number":Ljava/lang/String;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_2

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    .local v18, "success":Z
    :goto_2
    if-nez v18, :cond_4

    const/4 v15, 0x0

    :goto_3
    return-object v15

    .end local v3    # "efid":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v18    # "success":Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .restart local v3    # "efid":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_2
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "strEmail":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "emails":[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .end local v13    # "emails":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v13, v2

    .restart local v13    # "emails":[Ljava/lang/String;
    :cond_3
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "anr":Ljava/lang/String;
    new-instance v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v10, v6, v7, v13, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v10, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v4, ""

    const-string v5, ""

    const/16 v19, 0x0

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v10, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v18

    .restart local v18    # "success":Z
    goto :goto_2

    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v11    # "anr":Ljava/lang/String;
    .end local v13    # "emails":[Ljava/lang/String;
    .end local v17    # "strEmail":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v12, "buf":Ljava/lang/StringBuilder;
    packed-switch v14, :pswitch_data_1

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .local v15, "resultUri":Landroid/net/Uri;
    goto :goto_3

    .end local v15    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "slotIdStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .local v0, "slotId":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "slotId":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .restart local v0    # "slotId":I
    :pswitch_0
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    return-object v2

    :pswitch_1
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x6f49

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getFreeAdn(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getAdnCapacity(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getStorage(I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->isPhoneBookReady(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->isUsimPhoneBook(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getLastError(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    sget-object v3, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .local v9, "slotId":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "pin2":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v7    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v20    # "match":I
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v9    # "slotId":I
    .restart local v20    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .local v4, "efid":I
    :goto_1
    const-string v3, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "tag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "number":Ljava/lang/String;
    const-string v3, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "newTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v3, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "newNumber":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .local v19, "index":Ljava/lang/Integer;
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v25

    .local v25, "success":Z
    :goto_2
    if-nez v25, :cond_7

    const/4 v3, 0x0

    :goto_3
    return v3

    .end local v4    # "efid":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v19    # "index":Ljava/lang/Integer;
    .end local v25    # "success":Z
    :pswitch_1
    const/16 v4, 0x6f3b

    .restart local v4    # "efid":I
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v19    # "index":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v10, p0

    move v11, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .end local v25    # "success":Z
    :cond_4
    const-string v3, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "strEmail":Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "newEmails":[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v22    # "newEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v24, v22, v3

    .restart local v22    # "newEmails":[Ljava/lang/String;
    :cond_5
    const-string v3, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "newAnr":Ljava/lang/String;
    new-instance v18, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v18, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v3, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .end local v25    # "success":Z
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v8, 0x0

    const-string v10, ""

    invoke-direct {v3, v12, v13, v8, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v3, v1, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .end local v18    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v21    # "newAnr":Ljava/lang/String;
    .end local v22    # "newEmails":[Ljava/lang/String;
    .end local v24    # "strEmail":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
