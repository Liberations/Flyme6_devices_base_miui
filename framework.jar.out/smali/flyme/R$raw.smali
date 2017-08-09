.class public final Lflyme/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static alarm_alert:I

.field public static calendar_sound:I

.field public static email_sound:I

.field public static loaderror:I

.field public static mms_sound:I

.field public static mz_contact_avastar_rule:I

.field public static mz_contact_avastar_rule_international:I

.field public static nodomain:I

.field public static notification_sound:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x80000

    sput v0, Lflyme/R$raw;->alarm_alert:I

    const v0, 0x80001

    sput v0, Lflyme/R$raw;->calendar_sound:I

    const v0, 0x80002

    sput v0, Lflyme/R$raw;->email_sound:I

    const v0, 0x80003

    sput v0, Lflyme/R$raw;->loaderror:I

    const v0, 0x80004

    sput v0, Lflyme/R$raw;->mms_sound:I

    const v0, 0x80005

    sput v0, Lflyme/R$raw;->mz_contact_avastar_rule:I

    const v0, 0x80006

    sput v0, Lflyme/R$raw;->mz_contact_avastar_rule_international:I

    const v0, 0x80007

    sput v0, Lflyme/R$raw;->nodomain:I

    const v0, 0x80008

    sput v0, Lflyme/R$raw;->notification_sound:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
