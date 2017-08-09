.class public final Lflyme/R$animator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field public static fragment_fade_enter:I

.field public static fragment_fade_exit:I

.field public static mz_fragment_close_enter:I

.field public static mz_fragment_close_exit:I

.field public static mz_fragment_open_enter:I

.field public static mz_fragment_open_exit:I

.field public static mz_search_fragment_close_enter_alpha:I

.field public static mz_search_fragment_close_exit_alpha:I

.field public static mz_search_fragment_open_enter_alpha:I

.field public static mz_search_fragment_open_exit_alpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x50000

    sput v0, Lflyme/R$animator;->fragment_fade_enter:I

    const v0, 0x50001

    sput v0, Lflyme/R$animator;->fragment_fade_exit:I

    const v0, 0x50002

    sput v0, Lflyme/R$animator;->mz_fragment_close_enter:I

    const v0, 0x50003

    sput v0, Lflyme/R$animator;->mz_fragment_close_exit:I

    const v0, 0x50004

    sput v0, Lflyme/R$animator;->mz_fragment_open_enter:I

    const v0, 0x50005

    sput v0, Lflyme/R$animator;->mz_fragment_open_exit:I

    const v0, 0x50006

    sput v0, Lflyme/R$animator;->mz_search_fragment_close_enter_alpha:I

    const v0, 0x50007

    sput v0, Lflyme/R$animator;->mz_search_fragment_close_exit_alpha:I

    const v0, 0x50008

    sput v0, Lflyme/R$animator;->mz_search_fragment_open_enter_alpha:I

    const v0, 0x50009

    sput v0, Lflyme/R$animator;->mz_search_fragment_open_exit_alpha:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
