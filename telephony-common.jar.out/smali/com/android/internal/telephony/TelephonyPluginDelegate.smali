.class public Lcom/android/internal/telephony/TelephonyPluginDelegate;
.super Ljava/lang/Object;
.source "TelephonyPluginDelegate.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyPluginDelegate"

.field private static sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

.field private static sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    sput-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

    if-nez v0, :cond_0

    const-string v0, "TelephonyPluginDelegate"

    const-string v1, "error: TelephonyPluginDelegate instance is not created!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v8, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

    if-nez v8, :cond_2

    :try_start_0
    const-string v3, "/system/framework/"

    .local v3, "dir":Ljava/lang/String;
    const-string v8, "telephony_plugin_jar_name"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/ConfigResourceUtil;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "jarName":Ljava/lang/String;
    const-string v8, "telephony_plugin_class_name"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/ConfigResourceUtil;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "fullClsName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/framework/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "libPath":Ljava/lang/String;
    const-string v8, "TelephonyPluginDelegate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extension = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "TelephonyPluginDelegate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "classLoader = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "TelephonyPluginDelegate"

    const-string v9, "No customized TelephonyPlugin available, fallback to default"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.android.internal.telephony.DefaultTelephonyPlugin"

    :cond_1
    const/4 v1, 0x0

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    invoke-static {v5, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v8, "TelephonyPluginDelegate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cls = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "custMethod":Ljava/lang/reflect/Constructor;
    const-string v8, "TelephonyPluginDelegate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "constructor method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/TelephonyPluginBase;

    sput-object v8, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "custMethod":Ljava/lang/reflect/Constructor;
    .end local v3    # "dir":Ljava/lang/String;
    .end local v5    # "fullClsName":Ljava/lang/String;
    .end local v6    # "jarName":Ljava/lang/String;
    .end local v7    # "libPath":Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/TelephonyPluginDelegate;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyPluginDelegate;-><init>()V

    sput-object v8, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sMe:Lcom/android/internal/telephony/TelephonyPluginDelegate;

    :goto_1
    return-void

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, "TelephonyPluginDelegate"

    const-string v9, "Error loading TelephonyPlugin"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/internal/telephony/DefaultTelephonyPlugin;

    invoke-direct {v8}, Lcom/android/internal/telephony/DefaultTelephonyPlugin;-><init>()V

    sput-object v8, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v8, "TelephonyPluginDelegate"

    const-string v9, "Multiple init of TelephonyPluginDelegate not allowed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public initExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPluginBase;->initExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyPluginBase;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method

.method public makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeDcTracker(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    return-object v0
.end method

.method public makeDefaultPhones(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeDefaultPhones(Landroid/content/Context;)V

    return-void
.end method

.method public makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method public makePhoneProxy(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyPluginBase;->makePhoneProxy(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyPluginDelegate;->sPlugin:Lcom/android/internal/telephony/TelephonyPluginBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v0

    return-object v0
.end method
